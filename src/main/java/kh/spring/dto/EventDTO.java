package kh.spring.dto;

import java.security.Timestamp;

public class EventDTO {
	
	private int seq;
	private String title;
	private String contents;
	private String writer;
	private Timestamp data;
	private int selec;
	private int count;
	
	public EventDTO() {
		super();
	}

	public EventDTO(int seq, String title, String contents, String writer, Timestamp data, int selec, int count) {
		this.seq = seq;
		this.title = title;
		this.contents = contents;
		this.writer = writer;
		this.data = data;
		this.selec = selec;
		this.count = count;
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

	public Timestamp getData() {
		return data;
	}

	public void setData(Timestamp data) {
		this.data = data;
	}

	public int getSelec() {
		return selec;
	}

	public void setSelec(int selec) {
		this.selec = selec;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	
}
