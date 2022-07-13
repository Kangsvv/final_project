package kh.spring.dto;

import java.sql.Date;

public class QreplyDTO {

	private int replyseq;
	private int parentseq;
	private String contents;
	private String writer;
	private Date wrtie_date;
	
	
	public QreplyDTO() {
		super();
	}
	public QreplyDTO(int replyseq, int parentseq, String contents, String writer, Date wrtie_date) {
	
		this.replyseq = replyseq;
		this.parentseq = parentseq;
		this.contents = contents;
		this.writer = writer;
		this.wrtie_date = wrtie_date;
	}
	public int getReplyseq() {
		return replyseq;
	}
	public void setReplyseq(int replyseq) {
		this.replyseq = replyseq;
	}
	public int getParentseq() {
		return parentseq;
	}
	public void setParentseq(int parentseq) {
		this.parentseq = parentseq;
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
	public Date getWrtie_date() {
		return wrtie_date;
	}
	public void setWrtie_date(Date wrtie_date) {
		this.wrtie_date = wrtie_date;
	}
	
	

	
}