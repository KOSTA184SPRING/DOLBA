package com.dolba.security.provider;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.dolba.authority.dao.AuthoritiesDAO;
import com.dolba.dto.AuthorityDTO;
import com.dolba.dto.OwnerDTO;
import com.dolba.owner.dao.OwnerDAO;

/**
 * springSecurity���� loginForm�� ���� id�� pwd�� �Է��ϰ�
 * �α����� Ŭ������ �� ������ ���ѿ� ���� üũ���ִ� Ŭ����.
 * (authenticate()�� �ڵ����� ȣ��!)
 */

@Service //id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider {

	
	@Autowired
	private OwnerDAO ownerDAO;

	@Autowired
	private AuthoritiesDAO authoritiesDAO;

	public MemberAuthenticationProvider() {
	}

	public Authentication authenticate(Authentication authentication) throws AuthenticationException {

		if (!this.supports(authentication.getClass())) {
			return null;
		}

		//1. �μ��� ���� authentication�� �̿��Ͽ� id,pwd ������.
		String userId = authentication.getName();//id
		String password = (String) authentication.getCredentials();

		AuthorityDTO authorityDTO = authoritiesDAO.selectAuthorityByUserId(userId);

		if (authorityDTO == null) {
			throw new UsernameNotFoundException(userId + "�� ���� ȸ���Դϴ�. �ٽ� �α��� �Ͽ� �ֽʽÿ�.");
		}

		//2. db���� ����� ������ �����´�
		//(��й�ȣ�� ��ȣȭ�ؼ� �����´�)
		if (!password.equals(authorityDTO.getPassword())) {
			throw new UsernameNotFoundException(password + "�� ��ġ���� �ʽ��ϴ�.");
		}

		//4. db���� ����� ������ �ִٸ�  ���Ѹ���� �����´�.
		authorityDTO = authoritiesDAO.selectAuthorityByUserId((userId));

		List<SimpleGrantedAuthority> authList = new ArrayList<>();
		authList.add(new SimpleGrantedAuthority(authorityDTO.getRole()));


		//5. ���������� ������ ������� ������ Authentication�� �����ؼ� �����Ѵ�.

		// �Ѿ���� id�� pwd�� ������ DB�� �ִ� ������ ��.
		;

		return new UsernamePasswordAuthenticationToken(authorityDTO, null, authList);
	}

	/**
	 * �μ��� ���޵� Authentication ��ü�� ����ó���� �� �� �ִ� ��ü���� ���θ� �Ǵ��ϴ� �޼ҵ�
	 */

	public boolean supports(Class<?> authentication) {

		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
}
