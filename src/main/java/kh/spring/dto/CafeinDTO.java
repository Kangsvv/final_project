package kh.spring.dto;

public class CafeinDTO {
  private int seq;
  private String writer;
  private String name;
  private String address1;
  private String address2;
  private String day;
  private String open;
  private String finish;
  private String parking;
  private String id;

public CafeinDTO(int seq, String writer, String name, String address1, String address2, String day, String open,
		String finish, String parking, String id) {
	super();
	this.seq = seq;
	this.writer = writer;
	this.name = name;
	this.address1 = address1;
	this.address2 = address2;
	this.day = day;
	this.open = open;
	this.finish = finish;
	this.parking = parking;
	this.id = id;
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

public String getAddress1() {
	return address1;
}

public void setAddress1(String address1) {
	this.address1 = address1;
}

public String getAddress2() {
	return address2;
}

public void setAddress2(String address2) {
	this.address2 = address2;
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

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public  CafeinDTO () {}
	

}