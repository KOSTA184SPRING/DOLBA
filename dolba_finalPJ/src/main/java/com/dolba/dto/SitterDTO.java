package com.dolba.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class SitterDTO {
	private String sitterId;
	private String sitterPassword;
	private String sitterName;
	private String sitterPhone;
	private String sitterEmail;
	private String sitterEmail1;
	private String sitterEmail2;
	private String sitterFname;
	private String sitterGender;
	private String sitterAddr;
	private String sitterDetailAddr;
	private String sitterIntroduce;
	private String sitterGrade;
	private String sitterCertification;
	private String sitterPetAmount;
	private String sitterBasisPrice;
	private String sitterPermit;
	private String certificationFname;
	
	private MultipartFile[] file1;
	
	private List<SitterOptionDTO> sitterOptionDTO;
	
	

	public String getSitterId() {
		return sitterId;
	}

	public void setSitterId(String sitterId) {
		this.sitterId = sitterId;
	}

	public String getSitterPassword() {
		return sitterPassword;
	}

	public void setSitterPassword(String sitterPassword) {
		this.sitterPassword = sitterPassword;
	}

	public String getSitterName() {
		return sitterName;
	}

	public void setSitterName(String sitterName) {
		this.sitterName = sitterName;
	}

	public String getSitterPhone() {
		return sitterPhone;
	}

	public void setSitterPhone(String sitterPhone) {
		this.sitterPhone = sitterPhone;
	}

	public String getSitterEmail() {
		return sitterEmail;
	}

	public void setSitterEmail(String sitterEmail) {
		this.sitterEmail = sitterEmail;
	}

	public String getSitterEmail1() {
		return sitterEmail1;
	}

	public void setSitterEmail1(String sitterEmail1) {
		this.sitterEmail1 = sitterEmail1;
	}

	public String getSitterEmail2() {
		return sitterEmail2;
	}

	public void setSitterEmail2(String sitterEmail2) {
		this.sitterEmail2 = sitterEmail2;
	}

	public String getSitterFname() {
		return sitterFname;
	}

	public void setSitterFname(String sitterFname) {
		this.sitterFname = sitterFname;
	}

	public String getSitterGender() {
		return sitterGender;
	}

	public void setSitterGender(String sitterGender) {
		this.sitterGender = sitterGender;
	}

	public String getSitterAddr() {
		return sitterAddr;
	}

	public void setSitterAddr(String sitterAddr) {
		this.sitterAddr = sitterAddr;
	}

	public String getSitterDetailAddr() {
		return sitterDetailAddr;
	}

	public void setSitterDetailAddr(String sitterDetailAddr) {
		this.sitterDetailAddr = sitterDetailAddr;
	}

	public String getSitterIntroduce() {
		return sitterIntroduce;
	}

	public void setSitterIntroduce(String sitterIntroduce) {
		this.sitterIntroduce = sitterIntroduce;
	}

	public String getSitterGrade() {
		return sitterGrade;
	}

	public void setSitterGrade(String sitterGrade) {
		this.sitterGrade = sitterGrade;
	}

	public String getSitterCertification() {
		return sitterCertification;
	}

	public void setSitterCertification(String sitterCertification) {
		this.sitterCertification = sitterCertification;
	}

	public String getSitterPetAmount() {
		return sitterPetAmount;
	}

	public void setSitterPetAmount(String sitterPetAmount) {
		this.sitterPetAmount = sitterPetAmount;
	}

	public String getSitterBasisPrice() {
		return sitterBasisPrice;
	}

	public void setSitterBasisPrice(String sitterBasisPrice) {
		this.sitterBasisPrice = sitterBasisPrice;
	}

	public String getSitterPermit() {
		return sitterPermit;
	}

	public void setSitterPermit(String sitterPermit) {
		this.sitterPermit = sitterPermit;
	}

	public String getCertificationFname() {
		return certificationFname;
	}

	public void setCertificationFname(String scertificationFname) {
		this.certificationFname = scertificationFname;
	}

	public List<SitterOptionDTO> getSitterOptionDTO() {
		return sitterOptionDTO;
	}

	public void setSitterOptionDTO(List<SitterOptionDTO> sitterOptionDTO) {
		this.sitterOptionDTO = sitterOptionDTO;
	}

	public MultipartFile[] getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}
	

	
	
}