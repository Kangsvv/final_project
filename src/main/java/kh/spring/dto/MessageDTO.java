package kh.spring.dto;


import java.sql.Timestamp;

public class MessageDTO {
   
   private int message_seq;
   private String title;
   private String sender;
   private String receiver;
   private String sender_email;
   private String receiver_email;
   private String contents;
   private Timestamp write_date;
   private int cafein_seq;
   private String cafe;
   
   public MessageDTO() {}
public int getMessage_seq() {
	return message_seq;
}
public void setMessage_seq(int message_seq) {
	this.message_seq = message_seq;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getSender() {
	return sender;
}
public void setSender(String sender) {
	this.sender = sender;
}
public String getReceiver() {
	return receiver;
}
public void setReceiver(String receiver) {
	this.receiver = receiver;
}
public String getSender_email() {
	return sender_email;
}
public void setSender_email(String sender_email) {
	this.sender_email = sender_email;
}
public String getReceiver_email() {
	return receiver_email;
}
public void setReceiver_email(String receiver_email) {
	this.receiver_email = receiver_email;
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
public int getCafein_seq() {
	return cafein_seq;
}
public void setCafein_seq(int cafein_seq) {
	this.cafein_seq = cafein_seq;
}
public String getCafe() {
	return cafe;
}
public void setCafe(String cafe) {
	this.cafe = cafe;
}
public MessageDTO(int message_seq, String title, String sender, String receiver, String sender_email,
		String receiver_email, String contents, Timestamp write_date, int cafein_seq, String cafe) {
	super();
	this.message_seq = message_seq;
	this.title = title;
	this.sender = sender;
	this.receiver = receiver;
	this.sender_email = sender_email;
	this.receiver_email = receiver_email;
	this.contents = contents;
	this.write_date = write_date;
	this.cafein_seq = cafein_seq;
	this.cafe = cafe;
}


}
  