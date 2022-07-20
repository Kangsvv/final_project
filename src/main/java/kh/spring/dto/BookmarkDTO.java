package kh.spring.dto;

public class BookmarkDTO {

	
	private int cafefeed_seq;
	private String id;
	
	
	public BookmarkDTO(int cafefeed_seq, String id) {
		super();
		this.cafefeed_seq = cafefeed_seq;
		this.id = id;
	}
	public BookmarkDTO() {
		super();
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
