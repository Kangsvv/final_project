package kh.spring.dto;

public class Feed_likeDTO {

	private int cafefeed_seq;
	private String id;
	
	
	
	
	public Feed_likeDTO() {
		super();
	}
	public Feed_likeDTO(int cafefeed_seq, String id) {
		super();
		this.cafefeed_seq = cafefeed_seq;
		this.id = id;
	}
	public int getCafefeed_seq() {
		return cafefeed_seq;
	}
	public void setCafefeed_seq(int cafefeed_seq) {
		this.cafefeed_seq = cafefeed_seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
	
}
