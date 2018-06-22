package com.dolba.call.dao;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.SittingOptionDTO;

public interface CallDAO {
	
	/**
	 * �θ��� ����Ʈ�� �������� �޼ҵ�
	 * @return
	 */
	List<CallDTO> selectAllCallList();
	
	
	/**
	 * �θ��� �ɼǿ� �ش��ϴ� ����Ʈ�� �������� �޼ҵ�
	 * @param opsList
	 * @return
	 */
	List<CallDTO> selectCallListbyOption(List<String> opsList);


	/**
	 * �θ��� Id�� �ش��ϴ� �ɼ� ����Ʈ �������� �޼ҵ�
	 * @param callId
	 * @return
	 */
	List<SittingOptionDTO> selectSittingOptions(String callId);

	/**
	 * �ɼ�, ���� �˻� ���ǿ� �ش��ϴ� call list �˻��ϴ� �޼ҵ�
	 * @param opsList
	 * @param price
	 * @return
	 */
	List<CallDTO> selectCallListByOptionPrice(List<String> opsList, int price);

}
