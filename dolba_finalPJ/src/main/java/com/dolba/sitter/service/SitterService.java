package com.dolba.sitter.service;

import java.util.List;

import com.dolba.dto.CallDTO;
import com.dolba.dto.OptionsDTO;
import com.dolba.dto.OwnerRequestDTO;
import com.dolba.dto.SitterDTO;
import com.dolba.dto.SitterImgDTO;
import com.dolba.dto.SitterOptionDTO;
import com.dolba.dto.SitterReviewDTO;

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
	
	/**
	 * Option ���ǰ� Grade ���ǿ� ���� sitter �˻�
	 * @param opIds
	 * @param grade
	 * @return
	 */
	public List<SitterDTO> selectSittersByOpGrade(String [] opIds,int grade);

	public SitterDTO selectSitterInfo(String userId);
	
	/**
	 * sitterId�� �ش��ϴ� sitter ���� �����ϴ� �޼ҵ�
	 * @param sitterId
	 * @return 
	 */
	public SitterDTO selectSitterById(String sitterId);
	
	/**
	 * sitterId�� �ش��ϴ� sitter�� ������ �ɼ� �����ϴ� �޼ҵ�
	 * @param sitterId
	 * @return 
	 */
	public List<SitterOptionDTO> selectSitterOption(String sitterId);
	
	/**
	 * sitterId�� �ش��ϴ� sitter �ı� �����ϴ� �޼ҵ�
	 * @param sitterId
	 * @return 
	 **/
	public List<SitterReviewDTO> selectSitterReviewById(String sitterId);
	
	/**
	 * sitterId�� �ش��ϴ� sitter ������ �����ϴ� �޼ҵ�
	 * @param sitterId
	 * @return 
	 **/
	public List<SitterImgDTO> selectSitterImg(String sitterId);
	
	/**
	 * �ñ�� ���� ����ϱ�
	 * @param ownerRequestDTO
	 * @return 
	 **/
	public int insertOwnerRequest(OwnerRequestDTO ownerRequestDTO);
	
	/**
	 * optionName�� �ش��ϴ� optionId �˻��ϴ� �޼ҵ�
	 * @param checkArr
	 * @return 
	 **/
	public List<OptionsDTO> selectOpIdByCheckOption(String [] checkArr);
	
	/**
	 * ��ϵ� owner_request�� �ش��ϴ� owner_request_id �˻��ϴ� �޼ҵ� 
	 **/
	public String selectOwnerRequestId(OwnerRequestDTO ownerRequestDTO);
	
	/**
	 * owner_request���� ���õ� �ɼ� sitting_option�� ����ϱ�
	 * @param checkArr
	 * @return 
	 **/
	public int insertSittingOpByCheckOp(List<String> optionIdList, String ownerRequestId);

	public List<CallDTO> allSelectSitterRequest(String userId);

	public List<CallDTO> allSelectSitterRequestApproval(String userId);

}
