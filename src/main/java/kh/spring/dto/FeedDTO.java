package kh.spring.dto;

import java.sql.Date;

public class FeedDTO {
	private int cafefeed_seq;
	private String memname;
	private String cafename;
	private String img;
	private String title;
	private String contents;
	private String recommend;
	private Date write_date;
	
	public FeedDTO() {}
	public FeedDTO(int cafefeed_seq, String memname, String cafename, String img, String title, String contents,
			String recommend, Date write_date) {
		super();
		this.cafefeed_seq = cafefeed_seq;
		this.memname = memname;
		this.cafename = cafename;
		this.img = img;
		this.title = title;
		this.contents = contents;
		this.recommend = recommend;
		this.write_date = write_date;
	}
	public int getCafefeed_seq() {
		return cafefeed_seq;
	}
	public void setCafefeed_seq(int cafefeed_seq) {
		this.cafefeed_seq = cafefeed_seq;
	}
	public String getMemname() {
		return memname;
	}
	public void setMemname(String memname) {
		this.memname = memname;
	}
	public String getCafename() {
		return cafename;
	}
	public void setCafename(String cafename) {
		this.cafename = cafename;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getRecommend() {
		return recommend;
	}
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	
}
