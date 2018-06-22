package com.dolba.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.dolba.dto.NoticeDTO;
import com.dolba.notice.service.NoticeService;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	//��ü �˻�
	@RequestMapping("/allSelect")
	public String allSelectNotice(Model model) {
		List<NoticeDTO> dto = noticeService.selectAll();
		model.addAttribute("list",dto);        
		return "notice/noticeList";
	}
	
	//�󼼺���
	@RequestMapping("/readNotice")
	public String readNotice(HttpSession session,String noticeId, Model model) {
		NoticeDTO dto = noticeService.selectByModelNum(noticeId, true);//��ȸ�� ����
		model.addAttribute("dto", dto);
		return "notice/noticeRead";
	}
	
	// �����ϱ� �� �̵�
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(String noticeId) {
		NoticeDTO dto = noticeService.selectByModelNum(noticeId, false);
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", dto);
		mv.setViewName("notice/noticeUpdate");
		return mv;
	}
	
	//�����ϱ�
	@RequestMapping("/updateNotice")
	public String updateNotice(Model model,NoticeDTO noticeDTO) {
		System.out.println("noticeId="+noticeDTO.getNoticeId());
		int i=noticeService.update(noticeDTO);
		//System.out.println("i="+i);
		//NoticeDTO dto = noticeService.selectByModelNum(noticeId, false);
		//model.addAttribute("dto", dto);
		return "redirect:/notice/allSelect";
	}
	
	//���ڵ� ��������� �̵�(list.jsp -> write.jsp)
	@RequestMapping("/writeForm")
	public String writeForm() {
		return "notice/noticeWrite";
	}
		
	
	//�۾���
	@RequestMapping("/writeNotice")
	public String writeNotice(NoticeDTO noticeDTO) throws Exception{
	
		noticeService.insert(noticeDTO);
		return "redirect:/notice/allSelect";
	}
	
	//�����ϱ�
	@RequestMapping("/delete")
	public String delete(HttpSession session, String noticeId) {
		noticeService.delete(noticeId);
		return "redirect:/notice/allSelect";
	}
}
