package com.dolba.admin.service;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.ReplyDTO;
import com.dolba.dto.SitterDTO;

public interface AdminService {

	int joinOwner(OwnerDTO ownerDTO);

	int joinSitter(SitterDTO sitterDTO);

	String idCheck(String userId);
	
	/**
	 * q&a ��� ����ϱ�
	 **/
	public int insertReply(ReplyDTO replyDTO);
}
