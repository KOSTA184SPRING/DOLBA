package com.dolba.request.dao;

import java.util.List;

import com.dolba.dto.OptionsDTO;
import com.dolba.dto.SitterDTO;

public interface RequestDAO {
	/**
	 * ���񽺿��� �����ϴ� ��� option list select
	 * @return
	 */
	public List<OptionsDTO> selectAllOption();
	
}
