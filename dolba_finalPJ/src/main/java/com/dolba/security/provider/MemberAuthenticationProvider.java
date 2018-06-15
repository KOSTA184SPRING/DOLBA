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
import com.dolba.dto.OwnerDTO;
import com.dolba.owner.dao.OwnerDAO;

/**
 * springSecurity���� loginForm�� ���� id�� pwd�� �Է��ϰ�
 * �α����� Ŭ������ �� ������ ���ѿ� ���� üũ���ִ� Ŭ����.
 * (authenticate()�� �ڵ����� ȣ��!)
 * */

@Service //id="memberAuthenticationProvider"
public class MemberAuthenticationProvider implements AuthenticationProvider{
	
	@Autowired
	private OwnerDAO ownerDAO;
	
	@Autowired
	private AuthoritiesDAO aDAO;

	
	
	public MemberAuthenticationProvider() {}
	public Authentication authenticate(Authentication authentication) throws AuthenticationException{
		
		if(!this.supports(authentication.getClass())) {
			return null;
		}
		
		//1. �μ��� ���� authentication�� �̿��Ͽ� id,pwd ������.
		String userId = authentication.getName();//id
		
		OwnerDTO ownerDTO = ownerDAO.selectMemberById(userId);
		
		if(ownerDTO==null) {
			throw new UsernameNotFoundException(userId+"�� ���� ȸ���Դϴ�.");
		}
		
		
		//2. db���� ����� ������ �����´�
			//(��й�ȣ�� ��ȣȭ�ؼ� �����´�)
		String password = (String)authentication.getCredentials();
		if(!password.equals(ownerDTO.getOwnerPassword())){
			throw new UsernameNotFoundException(password+"�� ��ġ���� �ʽ��ϴ�.");
		}

				
		//4. db���� ����� ������ �ִٸ�  ���Ѹ���� �����´�.
		OwnerDTO owner =ownerDAO.selectMemberById(userId);
		List<SimpleGrantedAuthority> authList= new ArrayList<>();
		authList.add(new SimpleGrantedAuthority(owner.getOwnerId()));
		
		
		//5. ���������� ������ ������� ������ Authentication�� �����ؼ� �����Ѵ�.
		
		// �Ѿ���� id�� pwd�� ������ DB�� �ִ� ������ ��.
	;
		
		return new UsernamePasswordAuthenticationToken(ownerDTO, null, authList);
	}
	
	/**
	 * �μ��� ���޵� Authentication ��ü�� ����ó���� �� �� �ִ� ��ü���� ���θ� �Ǵ��ϴ� �޼ҵ�
	 * */
	
	public boolean supports(Class<?> authentication) {
		
		return UsernamePasswordAuthenticationToken.class.isAssignableFrom(authentication);
	}
}
