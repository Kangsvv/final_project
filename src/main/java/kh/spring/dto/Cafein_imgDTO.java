package kh.spring.dto;


public class Cafein_imgDTO {
	private int seq;
	private String main;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private int cafein_seq;
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public int getCafein_seq() {
		return cafein_seq;
	}
	public void setCafein_seq(int cafein_seq) {
		this.cafein_seq = cafein_seq;
	}
	public Cafein_imgDTO(int seq, String main, String img1, String img2, String img3, String img4, String img5,
			int cafein_seq) {
		super();
		this.seq = seq;
		this.main = main;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.cafein_seq = cafein_seq;
	}
	public Cafein_imgDTO() {}

	
}
