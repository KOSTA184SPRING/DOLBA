package com.dolba.diary.dao;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
import com.dolba.dto.OwnerRequestDTO;

public interface DiaryDAO {
	/**
	 * ���� ����ϱ�
	 **/
	public int insertDiary(DiaryDTO diaryDTO);
	
	/**
	 * �θ��� 
	 * �ش� ���� �˻��ϱ�
	 **/
	public List<DiaryDTO> selectDiaryByCall(CallDTO callDTO);
	
	/**
	 * �����ۼ��ϴ� ����� �˻��ϱ�
	 * */
	public String selectSitterFnameByCall(CallDTO callDTO);
	
	/**
	 * �ñ��
	 * �ش� ���� �˻��ϱ�
	 **/
	public List<DiaryDTO> selectDiaryByRequest(OwnerRequestDTO ownerRequestDTO);
	
	/**
	 * �����ۼ��ϴ� ����� �˻��ϱ�
	 * */
	public String selectSitterFnameByRequest(OwnerRequestDTO ownerRequestDTO);
}
