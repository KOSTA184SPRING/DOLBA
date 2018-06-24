package com.dolba.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dolba.dto.NoticeDTO;
import com.dolba.dto.ReviewDTO;
import com.dolba.review.dao.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDAO reviewDAO;
	
	@Override
	public List<ReviewDTO> selectAll() {
		return reviewDAO.selectAll();
	}

	@Override
	public ReviewDTO selectByModelNum(String reviewId, boolean state) {
		if(state) {
			if(reviewDAO.readnumUpdate(reviewId)==0) {// (0�̸� ����, 1�̸� ����)
				throw new RuntimeException("��ȸ���� �������� �ʾҽ��ϴ�");
			}
		}
		return reviewDAO.selectByModelNum(reviewId);
	}

	@Override
	public int insert(ReviewDTO reviewDTO) {
		return reviewDAO.insert(reviewDTO);
	}

	/*@Override
	public int delete(String reviewId, String reviewPwd) {
		ReviewDTO dto = reviewDAO.selectByModelNum(reviewId);

		if (dto.getReviewPwd().equals(reviewPwd)) {
			int result = reviewDAO.delete(reviewId, reviewPwd);
			if (result == 0)
				throw new RuntimeException("�������� �ʾҽ��ϴ�");
		} else {
			throw new RuntimeException("��й�ȣ �����Դϴ�");
		}
		return 1;
	}*/
	
	@Override
	public int delete(String reviewId) {
		return reviewDAO.delete(reviewId);
	}


	@Override
	public int update(ReviewDTO reviewDTO) {
		ReviewDTO dto = reviewDAO.selectByModelNum(reviewDTO.getReviewId());

		if (dto.getReviewPwd().equals(reviewDTO.getReviewPwd())) {
			return reviewDAO.update(reviewDTO);
			
		} 
		return 0;
	}

}
