package kh.spring.dto;

import java.sql.Date;

public class QreplyDTO {

	private int reply_seq;
	private int question_seq;
	private String contents;
	private String writer;
	private Date write_date;
	
	public QreplyDTO() {
		super();
	}

	public QreplyDTO(int reply_seq, int question_seq, String contents, String writer, Date write_date) {
		this.reply_seq = reply_seq;
		this.question_seq = question_seq;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
	}

	public int getReply_seq() {
		return reply_seq;
	}

	public void setReply_seq(int reply_seq) {
		this.reply_seq = reply_seq;
	}

	public int getQuestion_seq() {
		return question_seq;
	}

	public void setQuestion_seq(int question_seq) {
		this.question_seq = question_seq;
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