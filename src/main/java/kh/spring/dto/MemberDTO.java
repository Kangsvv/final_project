package kh.spring.dto;

import java.sql.Timestamp;

public class MemberDTO {
	private int mem_seq;
	private String mem_id; 
	private String mem_pw;
	private String mem_name;
	private String mem_email;
	private String mem_phone;
	private int mem_level;
	private int mem_status;
	private String mem_img;
	private String mem_ceocheckimg; 
	private Timestamp mem_joindate;
	private Timestamp mem_deletedate;
	private String mem_oriname;

	

	public MemberDTO() {
	}

	public MemberDTO(int mem_seq, String mem_id, String mem_pw, String mem_name, String mem_email, String mem_phone,
			int mem_level, int mem_status, String mem_img, String mem_ceocheckimg, Timestamp mem_joindate,
			Timestamp mem_deletedate, String mem_oriname) {
		super();
		this.mem_seq = mem_seq;
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_email = mem_email;
		this.mem_phone = mem_phone;
		this.mem_level = mem_level;
		this.mem_status = mem_status;
		this.mem_img = mem_img;
		this.mem_ceocheckimg = mem_ceocheckimg;
		this.mem_joindate = mem_joindate;
		this.mem_deletedate = mem_deletedate;
		this.mem_oriname = mem_oriname;
	}

	
	public String getMem_oriname() {
		return mem_oriname;
	}

	public void setMem_oriname(String mem_oriname) {
		this.mem_oriname = mem_oriname;
	}
	
	public int getmem_seq() {
		return mem_seq;
	}

	public void setmem_seq(int mem_seq) {
		this.mem_seq = mem_seq;
	}

	public String getmem_id() {
		return mem_id;
	}

	public void setmem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getmem_pw() {
		return mem_pw;
	}

	public void setmem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getmem_name() {
		return mem_name;
	}

	public void setmem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getmem_email() {
		return mem_email;
	}

	public void setmem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getmem_phone() {
		return mem_phone;
	}

	public void setmem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public int getmem_level() {
		return mem_level;
	}

	public void setmem_level(int mem_level) {
		this.mem_level = mem_level;
	}

	public int getmem_status() {
		return mem_status;
	}

	public void setmem_status(int mem_status) {
		this.mem_status = mem_status;
	}

	public String getmem_img() {
		return mem_img;
	}

	public void setmem_img(String mem_img) {
		this.mem_img = mem_img;
	}

	public String getmem_ceocheckimg() {
		return mem_ceocheckimg;
	}

	public void setmem_ceocheckimg(String mem_ceocheckimg) {
		this.mem_ceocheckimg = mem_ceocheckimg;
	}

	public Timestamp getmem_joindate() {
		return mem_joindate;
	}

	public void setmem_joindate(Timestamp mem_joindate) {
		this.mem_joindate = mem_joindate;
	}

	public Timestamp getmem_deletedate() {
		return mem_deletedate;
	}

	public void setmem_deletedate(Timestamp mem_deletedate) {
		this.mem_deletedate = mem_deletedate;
	}

	@Override
	public String toString() {
		return "MemberDTO [mem_seq=" + mem_seq + ", mem_id=" + mem_id + ", mem_pw=" + mem_pw + ", mem_name=" + mem_name
				+ ", mem_email=" + mem_email + ", mem_phone=" + mem_phone + ", mem_level=" + mem_level + ", mem_status="
				+ mem_status + ", mem_img=" + mem_img + ", mem_ceocheckimg=" + mem_ceocheckimg + ", mem_joindate="
				+ mem_joindate + ", mem_deletedate=" + mem_deletedate + "]";
	}


}
