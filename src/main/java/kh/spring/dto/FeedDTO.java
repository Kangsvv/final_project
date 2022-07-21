package kh.spring.dto;

import java.sql.Timestamp;

public class FeedDTO {
	private int cafefeed_seq;
	private String title;
	private String id;
	private String contents;
	private Timestamp write_date;
	private int like_count;
	private int view_count;
	
	
	public FeedDTO() {
		super();
	}
	public FeedDTO(int cafefeed_seq, String title, String id, String contents, Timestamp write_date, int like_count,
			int view_count) {
		super();
		this.cafefeed_seq = cafefeed_seq;
		this.title = title;
		this.id = id;
		this.contents = contents;
		this.write_date = write_date;
		this.like_count = like_count;
		this.view_count = view_count;
	}
	public int getCafefeed_seq() {
		return cafefeed_seq;
	}
	public void setCafefeed_seq(int cafefeed_seq) {
		this.cafefeed_seq = cafefeed_seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Timestamp getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	
	

	
}
