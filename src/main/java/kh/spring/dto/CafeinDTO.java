package kh.spring.dto;

public class CafeinDTO {
  private int seq;
  private String writer;
  private String name;
  private String address;
  private String day;
  private String open;
  private String finish;
  private String parking;
public int getSeq() {
	return seq;
}
public void setSeq(int seq) {
	this.seq = seq;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getDay() {
	return day;
}
public void setDay(String day) {
	this.day = day;
}
public String getOpen() {
	return open;
}
public void setOpen(String open) {
	this.open = open;
}
public String getFinish() {
	return finish;
}
public void setFinish(String finish) {
	this.finish = finish;
}
public String getParking() {
	return parking;
}
public void setParking(String parking) {
	this.parking = parking;
}
public CafeinDTO(int seq, String writer, String name, String address, String day, String open, String finish,
		String parking) {
	super();
	this.seq = seq;
	this.writer = writer;
	this.name = name;
	this.address = address;
	this.day = day;
	this.open = open;
	this.finish = finish;
	this.parking = parking;
}
public CafeinDTO() {}
  
  
}