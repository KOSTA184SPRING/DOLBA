package com.dolba.admin.service;

import java.util.List;

import com.dolba.dto.OwnerDTO;
import com.dolba.dto.SitterDTO;

public interface AdminService {

	int joinOwner(OwnerDTO ownerDTO);

	int joinSitter(SitterDTO sitterDTO);

	String idCheck(String userId);

	List<SitterDTO> adminselectSitterList();

	int updateSitterPermit(String sitterId, String state);

}
