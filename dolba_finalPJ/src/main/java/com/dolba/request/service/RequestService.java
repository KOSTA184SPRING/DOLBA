package com.dolba.request.service;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;

public interface RequestService {
	/**
	 * ���񽺿��� �����ϴ� ��� �ɼ� ����Ʈ
	 * @return
	 */
	List<OptionsDTO> selectAllOption();

	/**
	 * ó������ ���� sitter Request ���ڸ� ã�ƿ��� �޼ҵ�
	 * @param userId
	 * @return
	 */
	String selectSitterRequestCountByUserId(String userId);

	/**
	 * ó������ ���� owner Request ���ڸ� ã�ƿ��� �޼ҵ�
	 * @param userId
	 * @return
	 */
	String selectOwnerRequestCountByUserId(String userId);
	
	
	
	OwnerRequestDTO ownerRequestDetail(String primaryKey);

	
	int updatePaymentState(String ownerRequestId, String state);
}
