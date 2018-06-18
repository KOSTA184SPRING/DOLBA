package com.dolba.sitter.dao;

import java.util.List;

import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterOptionDTO;

public interface SitterDAO {
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
	
	/**
	 * sitter �� ������ ���� �ɼ��� sitterId�� ���� �������� �޼ҵ�
	 * @param sitterId
	 * @return
	 */
	public List<SitterOptionDTO> selectSitterOptions(String sitterId);

	/**
	 * option��� grade �˻��������� sitter �˻��ϴ� �޼ҵ�
	 * @param opList
	 * @param grade
	 * @return
	 */
	public List<SitterDTO> selectSittersByOpGrade(List<String> opList, int grade);
}
