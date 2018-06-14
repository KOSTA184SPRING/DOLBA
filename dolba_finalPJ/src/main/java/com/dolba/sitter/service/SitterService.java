package com.dolba.sitter.service;

import java.util.List;

import com.dolba.dto.SitterDTO;

public interface SitterService {
	/**
	 * ��ϵǾ��ִ� ��� ����� �����ϴ� �޼ҵ�
	 * @return
	 */
	public List<SitterDTO> selectAllSitter();
	
	/**
	 * �㰡�� ����� ����Ʈ �����ϴ� �޼ҵ�
	 * @return
	 */
	public List<SitterDTO> selectAllPermittedSitter();
	
	/**
	 * �㰡 ������� ����� ����Ʈ �����ϴ� �޼ҵ�
	 * @return
	 */
	public List<SitterDTO> selectAllWaitingSitter();
}
