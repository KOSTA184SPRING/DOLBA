package com.dolba.diary.service;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.DiaryDTO;
import com.dolba.dto.OwnerRequestDTO;

public interface DiaryService {
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
	 * �����ۼ��ϴ� ����ͻ��� �˻��ϱ�
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
