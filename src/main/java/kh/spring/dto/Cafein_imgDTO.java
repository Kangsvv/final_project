package kh.spring.dto;


public class Cafein_imgDTO {
	private int seq;
	private String ori_name;
	private String sys_name;
	private int cafein_seq;
	public Cafein_imgDTO() {}
	public Cafein_imgDTO(int seq, String ori_name, String sys_name, int cafein_seq) {
		super();
		this.seq = seq;
		this.ori_name = ori_name;
		this.sys_name = sys_name;
		this.cafein_seq = cafein_seq;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getOri_name() {
		return ori_name;
	}
	public void setOri_name(String ori_name) {
		this.ori_name = ori_name;
	}
	public String getSys_name() {
		return sys_name;
	}
	public void setSys_name(String sys_name) {
		this.sys_name = sys_name;
	}
	public int getCafein_seq() {
		return cafein_seq;
	}
	public void setCafein_seq(int cafein_seq) {
		this.cafein_seq = cafein_seq;
	}

	
	
}
