package com.dolba.qa.service;

import java.util.List;

import com.dolba.dto.QaDTO;
import com.dolba.dto.ReplyDTO;

public interface QaService {
	/**
	 * qa�Խ��� ��� ����Ʈ �˻��ϴ� �޼ҵ�
	 **/
	public List<QaDTO> selectAllQa();
	
	/**
	 * �ش� qa�Խ��� �󼼺��� 
	 **/
	public QaDTO selectQaByQaId(String QAId);
	
	/**
	 * qa ����ϱ�
	 **/
	public int insertQa(QaDTO qaDTO);
	
	/**
	 * keyField, keyWord�� �˻��ϱ�
	 **/
	public List<QaDTO> searchQaByKeyword(String keyField, String keyWord);
	
	/**
	 * ��۵� ��������
	 **/
	public List<ReplyDTO> selectReply(String qaId);
}
