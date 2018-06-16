package com.dolba.authority.dao;

import com.dolba.dto.AuthorityDTO;
import com.dolba.dto.OwnerDTO;

public interface AuthoritiesDAO {
	/**
	 * ����� ���� ���
	 * (�� USER(���̵�)�� �������� ������ ���� �� �ִ�.
	 * */
	int insertAuthority(AuthorityDTO authority);
	
	/**
	 * id�� �ش��ϴ� ���� �˻�.
	 * */

	AuthorityDTO selectAuthorityByUserId(String userId);


}
