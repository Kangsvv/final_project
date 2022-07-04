package kh.spring.dto;

public class CafeinDTO {
  private int seq;
  private String writer;
  private String name;
  private String address;
  private String day;
  private String time;
  private int parking;
  
 public CafeinDTO() {}
public CafeinDTO(int seq, String writer, String name, String address, String day, String time, int parking) {
	super();
	this.seq = seq;
	this.writer = writer;
	this.name = name;
	this.address = address;
	this.day = day;
	this.time = time;
	this.parking = parking;
}
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
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public int getParking() {
	return parking;
}
public void setParking(int parking) {
	this.parking = parking;
}
}
