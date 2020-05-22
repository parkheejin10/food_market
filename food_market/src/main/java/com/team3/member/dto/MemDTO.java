package com.team3.member.dto;

import java.sql.Timestamp;

public class MemDTO {

	private int mb_idx;
	private String mb_id;
	private String mb_pw;
	private String mb_pw2; // 회원가입 시 pw 체크, 회원정보 수정 시 수정 할 pw
	private String mb_pw3; // 수정 시 pw 체크
	private String mb_name;
	private String mb_email;
	private String mb_mobile;
	private String mb_postcode; // 우편번호
	private String mb_address; // 우편 주소
	private String mb_address1; // 상세주소
	private String mb_birth;
	private int mb_seller;
	private Timestamp mb_date;
	private Timestamp mb_rdate;
    
	
	public String getMb_postcode() {
		return mb_postcode;
	}
	public void setMb_postcode(String mb_postcode) {
		this.mb_postcode = mb_postcode;
	}
	public String getMb_address1() {
		return mb_address1;
	}
	public void setMb_address1(String mb_address1) {
		this.mb_address1 = mb_address1;
	}
	public String getMb_pw2() {
		return mb_pw2;
	}
	public void setMb_pw2(String mb_pw2) {
		this.mb_pw2 = mb_pw2;
	}
	public String getMb_pw3() {
		return mb_pw3;
	}
	public void setMb_pw3(String mb_pw3) {
		this.mb_pw3 = mb_pw3;
	}
	public int getMb_idx() {
		return mb_idx;
	}
	public void setMb_idx(int mb_idx) {
		this.mb_idx = mb_idx;
	}
	public String getMb_id() {
		return mb_id;
	}
	public void setMb_id(String mb_id) {
		this.mb_id = mb_id;
	}
	public String getMb_pw() {
		return mb_pw;
	}
	public void setMb_pw(String mb_pw) {
		this.mb_pw = mb_pw;
	}
	public String getMb_name() {
		return mb_name;
	}
	public void setMb_name(String mb_name) {
		this.mb_name = mb_name;
	}
	public String getMb_email() {
		return mb_email;
	}
	public void setMb_email(String mb_email) {
		this.mb_email = mb_email;
	}
	public String getMb_mobile() {
		return mb_mobile;
	}
	public void setMb_mobile(String mb_mobile) {
		this.mb_mobile = mb_mobile;
	}
	public String getMb_address() {
		return mb_address;
	}
	public void setMb_address(String mb_address) {
		this.mb_address = mb_address;
	}
	public String getMb_birth() {
		return mb_birth;
	}
	public void setMb_birth(String mb_birth) {
		this.mb_birth = mb_birth;
	}
	public int getMb_seller() {
		return mb_seller;
	}
	public void setMb_seller(int mb_seller) {
		this.mb_seller = mb_seller;
	}
	public Timestamp getMb_date() {
		return mb_date;
	}
	public void setMb_date(Timestamp mb_date) {
		this.mb_date = mb_date;
	}
	public Timestamp getMb_rdate() {
		return mb_rdate;
	}
	public void setMb_rdate(Timestamp mb_rdate) {
		this.mb_rdate = mb_rdate;
	}
    
 
}
