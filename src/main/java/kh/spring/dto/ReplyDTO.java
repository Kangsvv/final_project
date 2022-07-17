package kh.spring.dto;

import java.sql.Timestamp;

public class ReplyDTO {

	private int seq;
	private String id;
	private String contents;
	private Timestamp write_date;
	private int cafefeed_seq;
	
	
	public ReplyDTO() {
		super();
	}
	public ReplyDTO(int seq, String id, String contents, Timestamp write_date, int cafefeed_seq) {
		super();
		this.seq = seq;
		this.id = id;
		this.contents = contents;
		this.write_date = write_date;
		this.cafefeed_seq = cafefeed_seq;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
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
	public int getCafefeed_seq() {
		return cafefeed_seq;
	}
	public void setCafefeed_seq(int cafefeed_seq) {
		this.cafefeed_seq = cafefeed_seq;
	}
	
	
}
