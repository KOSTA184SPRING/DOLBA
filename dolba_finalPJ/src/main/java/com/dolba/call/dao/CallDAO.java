package com.dolba.call.dao;

import java.util.List;
import java.util.Map;

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


	/**
	 * �θ��� ��û ���� �߰��ϴ� �޼ҵ�
	 * @param callDTO
	 */
	void insertCall(CallDTO callDTO);


	/**
	 * �θ��� ��û �ɼ� ��û�ɼ����̺� �߰��ϴ� �޼ҵ�
	 * @param optionSelect
	 */
	void insertSittingOption(String[] optionSelect,String callId);

	/**
	 * ���������� insert �� call Id ã�ƿ���
	 * @return
	 */
	String selectLastCallId(String ownerId);


	/**
	 * callId�� call �� ������ �������� �޼ҵ�
	 * @param callId
	 * @return
	 */
	CallDTO selectCallByCallId(String callId);
}
