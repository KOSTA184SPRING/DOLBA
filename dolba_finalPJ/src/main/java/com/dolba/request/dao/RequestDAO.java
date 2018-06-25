package com.dolba.request.dao;

import java.util.List;
import java.util.Map;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;

public interface RequestDAO {
	/**
	 * ���񽺿��� �����ϴ� ��� option list select
	 * @return
	 */
	public List<OptionsDTO> selectAllOption();

	/**
	 * ������ ���� ��û�� �߰��ϴ� �޼ҵ�
	 * @param map
	 */
	public void insertSitterRequest(Map<String, String> map);

	/**
	 * ó������ ���� sitter request ���ڸ� ã�ƿ��� �޼ҵ�
	 * @param userId
	 * @return
	 */
	public String selectSitterRequestCountByUserId(String userId);

	/**
	 * ó������ ���� owner request ���ڸ� ã�ƿ��� �޼ҵ�
	 * @param userId
	 * @return
	 */
	public String selectOwnerRequestCountByUserId(String userId);
	
	public OwnerRequestDTO selectRequestByKey(String key);

	public int updatePaymentState(String ownerRequestId, String state);
	
}
