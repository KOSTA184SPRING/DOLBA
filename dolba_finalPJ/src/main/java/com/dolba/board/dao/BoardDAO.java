package com.dolba.board.dao;

import java.util.List;

import com.dolba.dto.BoardDTO;

public interface BoardDAO {
	/**
	 * qa�Խ��� ��� ����Ʈ �˻��ϴ� �޼ҵ�
	 **/
	public List<BoardDTO> selectAllQa();
}
