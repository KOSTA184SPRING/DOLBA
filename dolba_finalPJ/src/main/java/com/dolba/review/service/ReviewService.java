package com.dolba.review.service;

import java.util.List;

import com.dolba.dto.ReviewDTO;

public interface ReviewService {
	/**
	 * ���ڵ� ��ü �˻�
	 */
	List<ReviewDTO> selectAll();

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� �˻�
	 * 
	 * @param: state
	 *             true�̸� ��ȸ������, false�̸� ��ȸ��������.
	 */
	ReviewDTO selectByModelNum(String reviewId, boolean state);

	/**
	 * ���ڵ� ����
	 */
	int insert(ReviewDTO reviewDTO);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	/*int delete(String reviewId, String reviewPwd);*/
	int delete(String reviewId);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int update(ReviewDTO reviewDTO);
}
