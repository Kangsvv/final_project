package kh.spring.dto;

import java.sql.Timestamp;

public class NoticDTO {
	
	private int seq;
	private String title;
	private String contents;
	private String writer;
	private Timestamp write_date;
	private int viewcount;
	
	public NoticDTO() {
		super();
	}

	public NoticDTO(int seq, String title, String contents, String writer, Timestamp write_date, int viewcount) {
		super();
		this.seq = seq;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
		this.viewcount = viewcount;
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

	public Timestamp getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
	}

	public int getCount() {
		return viewcount;
	}

	public void setCount(int viewcount) {
		this.viewcount = viewcount;
	}
	
	
	


	
}
