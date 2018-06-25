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
	public List<DiaryDTO> selectDiaryByCall(String sittingId);
	
	/**
	 * �����ۼ��ϴ� ����ͻ��� �˻��ϱ�
	 * */
	public String selectSitterFnameByCall(String sittingId);
	
	/**
	 * �ñ��
	 * �ش� ���� �˻��ϱ�
	 **/
	public List<DiaryDTO> selectDiaryByRequest(String sittingId);
	
	/**
	 * �����ۼ��ϴ� ����� �˻��ϱ�
	 * */
	public String selectSitterFnameByRequest(String sittingId);
}
