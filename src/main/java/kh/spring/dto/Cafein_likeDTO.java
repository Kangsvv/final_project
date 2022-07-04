package kh.spring.dto;

public class Cafein_likeDTO {
	private int cafein_seq;
	private String id;
	public Cafein_likeDTO(int cafein_seq, String id) {
		super();
		this.cafein_seq = cafein_seq;
		this.id = id;
	}
	public Cafein_likeDTO() {}
	public int getCafein_seq() {
		return cafein_seq;
	}
	public void setCafein_seq(int cafein_seq) {
		this.cafein_seq = cafein_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
