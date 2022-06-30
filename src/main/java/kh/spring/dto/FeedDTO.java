package kh.spring.dto;

public class FeedDTO {
	private int CafeBoard_seq;
	private String mem_nickname;
	private String cafename;
	private String address1;
	private String address2;
	private String work_date;
	private String work_time;
	private String parking;
	private String main_pt;
	private String introduce;
	private int recommend;
	
	public FeedDTO() {}
	public FeedDTO(int cafeBoard_seq, String mem_nickname, String cafename, String address1, String address2,
			String work_date, String work_time, String parking, String main_pt, String introduce, int recommend) {
		super();
		CafeBoard_seq = cafeBoard_seq;
		this.mem_nickname = mem_nickname;
		this.cafename = cafename;
		this.address1 = address1;
		this.address2 = address2;
		this.work_date = work_date;
		this.work_time = work_time;
		this.parking = parking;
		this.main_pt = main_pt;
		this.introduce = introduce;
		this.recommend = recommend;
	}
	public int getCafeBoard_seq() {
		return CafeBoard_seq;
	}
	public void setCafeBoard_seq(int cafeBoard_seq) {
		CafeBoard_seq = cafeBoard_seq;
	}
	public String getMem_nickname() {
		return mem_nickname;
	}
	public void setMem_nickname(String mem_nickname) {
		this.mem_nickname = mem_nickname;
	}
	public String getCafename() {
		return cafename;
	}
	public void setCafename(String cafename) {
		this.cafename = cafename;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getWork_date() {
		return work_date;
	}
	public void setWork_date(String work_date) {
		this.work_date = work_date;
	}
	public String getWork_time() {
		return work_time;
	}
	public void setWork_time(String work_time) {
		this.work_time = work_time;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getMain_pt() {
		return main_pt;
	}
	public void setMain_pt(String main_pt) {
		this.main_pt = main_pt;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	
	
}
