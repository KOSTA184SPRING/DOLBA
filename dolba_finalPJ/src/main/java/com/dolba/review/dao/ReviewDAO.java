package com.dolba.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.dolba.dto.ReviewDTO;

public interface ReviewDAO {
	
	/**
	 * ���ڵ� ��ü �˻�
	 */
	List<ReviewDTO> selectAll();
	
	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� �˻�
	 */
	ReviewDTO selectByModelNum(String reviewId);
	
	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ��ȸ�� �����ϱ�
	 */
	int readnumUpdate(String reviewId);

	/**
	 * ���ڵ� ����
	 */
	int insert(ReviewDTO reviewDTO);

	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	/*int delete(String reviewId,String reviewPwd);*/
	int delete(String reviewId);
	
	/**
	 * �𵨹�ȣ�� �ش��ϴ� ���ڵ� ����
	 */
	int update(ReviewDTO reviewDTO);
}
