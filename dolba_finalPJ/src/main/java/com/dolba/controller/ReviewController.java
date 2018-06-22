package com.dolba.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.dto.ReviewDTO;
import com.dolba.review.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	//��ü �˻�
	@RequestMapping("/allSelect")
	public String allSelectReview(Model model) {
		model.addAttribute("list",reviewService.selectAll());
		return "board/reviewList";
	}
	
	//�󼼺���
	@RequestMapping("/readReview")
	public String readReview(Model model, String reviewId) {
		ReviewDTO dto = reviewService.selectByModelNum(reviewId, true);//��ȸ�� ������
		model.addAttribute("dto",dto);
		return "board/reviewRead";
	}
	
	// �����ϱ� �� �̵�
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(String reviewId) {
		ReviewDTO dto = reviewService.selectByModelNum(reviewId, false);
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", dto);
		mv.setViewName("board/reviewUpdate");
		return mv;
	}
	
	//�����ϱ�
	@RequestMapping("/updateReview")
	public String updateReview(ReviewDTO reviewDTO) {
		System.out.println("reviewId="+reviewDTO.getReviewId());
		System.out.println("reviewTitle="+reviewDTO.getReviewTitle());
		reviewService.update(reviewDTO);
		return "redirect:/review/allSelect";
	}
	
	//���ڵ� ��������� �̵�(list.jsp -> write.jsp)
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "board/reviewWrite";
	}
	
	//����ϱ�
	@RequestMapping("/writeReview")
	public String writeReview(String ownerId, ReviewDTO reviewDTO) {
		System.out.println("ownerId="+ownerId);
		System.out.println("contoroller : "+reviewDTO.getOwnerId());
		System.out.println("contoroller : "+reviewDTO.getReviewTitle());
		System.out.println("contoroller : "+reviewDTO.getReviewPwd());
		System.out.println("contoroller : "+reviewDTO.getReviewContent());


		reviewService.insert(reviewDTO);
		
		return "redirect:/review/allSelect";
	}
	
	/*//�����ϱ�
	@RequestMapping("/delete")
	public String delete(HttpSession session, String reviewId , String reviewPwd) {
		reviewService.delete(reviewId,reviewPwd);
		return "redirect:/review/allSelect";
	}*/
	
	//�����ϱ�
		@RequestMapping("/deleteReview")
		@ResponseBody
		public String delete(String reviewId) {
			System.out.println(reviewId);
			System.out.println(reviewService.delete(reviewId));
			reviewService.delete(reviewId);
			return "redirect:/review/allSelect";
		}
}
