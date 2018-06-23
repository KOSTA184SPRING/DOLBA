package com.dolba.board.service;

import java.util.List;

import com.dolba.dto.BoardDTO;
import com.dolba.dto.ReplyDTO;

public interface BoardService {
	/**
	 * qa�Խ��� ��� ����Ʈ �˻��ϴ� �޼ҵ�
	 **/
	public List<BoardDTO> selectAllQa();
	
	/**
	 * �ش� qa�Խ��� �󼼺��� ,��ȸ�� ����
	 **/
	public BoardDTO selectQaByQaId(String qaId,boolean state);
	
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
	
	/**
	 * �����ϱ�
	 **/
	public int updateQa(BoardDTO boardDTO);
	
	/**
	 * �����ϱ�
	 **/
	public int deleteQa(String qaId);
}
