package com.dolba.admin.dao;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.ReplyDTO;
import com.dolba.dto.SitterDTO;

public interface AdminDAO {

	int joinOwner(OwnerDTO ownerDTO);

	int joinSitter(SitterDTO sitterDTO);

	int idCheck(String userId);

	/**
	 * q&a ��� ����ϱ�
	 **/
	public int insertReply(ReplyDTO replyDTO);
}
