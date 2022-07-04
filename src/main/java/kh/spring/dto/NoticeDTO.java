package kh.spring.dto;

import java.sql.Date;

public class NoticeDTO {

	
	private int seq;
	private String title;
	private String contents;
	private String writer;
	private Date write_date;
	
	
	public NoticeDTO() {}
	public NoticeDTO(int seq, String title, String contents, String writer, Date write_date) {
		super();
		this.seq = seq;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
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

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
	
}
