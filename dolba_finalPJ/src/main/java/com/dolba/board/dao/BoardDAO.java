package com.dolba.board.dao;

import java.util.List;

import com.dolba.dto.BoardDTO;
import com.dolba.dto.ReplyDTO;

public interface BoardDAO {
	/**
	 * qa�Խ��� ��� ����Ʈ �˻��ϴ� �޼ҵ�
	 **/
	public List<BoardDTO> selectAllQa();
	
	/**
	 * qa�Խ��� �󼼺��� 
	 **/
	public BoardDTO selectQaByQaId(String QAId);
	
	/**
	 * qa ����ϱ�
	 **/
	public int insertQa(BoardDTO qaDTO);
	
	/**
	 * keyField, keyWord�� �˻��ϱ�
	 **/
	public List<BoardDTO> searchQaByKeyword(String keyField, String keyWord);
	
	/**
	 * ��۵� ��������
	 **/
	public List<ReplyDTO> selectReply(String qaId);
}
