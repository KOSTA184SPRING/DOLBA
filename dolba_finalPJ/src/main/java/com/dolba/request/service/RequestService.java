package com.dolba.request.service;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;

public interface RequestService {
	/**
	 * ���񽺿��� �����ϴ� ��� �ɼ� ����Ʈ
	 * @return
	 */
	List<OptionsDTO> selectAllOption();
}
