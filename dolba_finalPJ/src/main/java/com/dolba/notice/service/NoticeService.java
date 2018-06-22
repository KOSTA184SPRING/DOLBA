package com.dolba.notice.service;

import java.util.List;

import com.dolba.dto.NoticeDTO;

public interface NoticeService {
	/**
	 * ���ڵ� ��ü �˻�
	 */
	List<NoticeDTO> selectAll();

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� �˻�
	 * 
	 * @param: state
	 *             true�̸� ��ȸ������, false�̸� ��ȸ��������.
	 */
	NoticeDTO selectByModelNum(String noticeId, boolean state);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int update(NoticeDTO noticeDTO);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int delete(String noticeId);

	/**
	 * ���ڵ� ����
	 */
	int insert(NoticeDTO noticeDTO);
}
