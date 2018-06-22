package com.dolba.notice.dao;

import java.util.List;

import com.dolba.dto.NoticeDTO;

public interface NoticeDAO {
	/**
	 * ���ڵ� ��ü �˻�
	 */
	List<NoticeDTO> selectAll();
	
	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� �˻�
	 */
	NoticeDTO selectByModelNum(String noticeId);
	
	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ��ȸ�� �����ϱ�
	 */
	int readnumUpdate(String noticeId);

	/**
	 * ���ڵ� ����
	 */
	int insert(NoticeDTO noticeDTO);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int delete(String noticeId);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int update(NoticeDTO noticeDTO);


}
