package kh.spring.dto;

import java.sql.Date;

public class QuestionDTO {
	
	private int question_seq;
	private String title;
	private String contents;
	private String writer;
	private Date write_date;
	
	public QuestionDTO(){
		super();
	}
	public QuestionDTO(int question_seq, String title, String contents, String writer, Date write_date) {
		this.question_seq = question_seq;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.write_date = write_date;
	}
	public int getQuestion_seq() {
		return question_seq;
	}
	public void setQuestion_seq(int question_seq) {
		this.question_seq = question_seq;
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
