package kh.spring.dto;

public class Feed_imgDTO {
	private int seq;
	private String ori_name;
	private String sys_name;
	private int cafefeed_seq;
	
	
	
	
	public Feed_imgDTO() {
		super();
	}
	public Feed_imgDTO(int seq, String ori_name, String sys_name, int cafefeed_seq) {
		super();
		this.seq = seq;
		this.ori_name = ori_name;
		this.sys_name = sys_name;
		this.cafefeed_seq = cafefeed_seq;
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
	public int getCafefeed_seq() {
		return cafefeed_seq;
	}
	public void setCafefeed_seq(int cafefeed_seq) {
		this.cafefeed_seq = cafefeed_seq;
	}
	
	
}
