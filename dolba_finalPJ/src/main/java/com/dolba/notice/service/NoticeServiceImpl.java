package com.dolba.notice.service;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dolba.dto.NoticeDTO;
import com.dolba.notice.dao.NoticeDAO;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;

	@Override
	public List<NoticeDTO> selectAll() {
		return noticeDAO.selectAll();
	}

	@Override
	public NoticeDTO selectByModelNum(String noticeId, boolean state) {
		if(state) {
			if(noticeDAO.readnumUpdate(noticeId)==0) {// (0�̸� ����, 1�̸� ����) 
				throw new RuntimeException("��ȸ���� �������� �ʾҽ��ϴ�");
			}
		}
		return noticeDAO.selectByModelNum(noticeId);
	}

	@Override
	public int update(NoticeDTO noticeDTO) {
		int result = noticeDAO.update(noticeDTO);
		return result;
	}

	@Override
	public int delete(String noticeId) {
		NoticeDTO dto = noticeDAO.selectByModelNum(noticeId);
		int result  = noticeDAO.delete(noticeId);
		if(result==0) throw new RuntimeException("�������� �ʾҽ��ϴ�");
		return result;
	}

	@Override
	public int insert(NoticeDTO noticeDTO) {
		return noticeDAO.insert(noticeDTO);
	}

}
