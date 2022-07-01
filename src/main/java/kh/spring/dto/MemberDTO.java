package kh.spring.dto;

import java.sql.Timestamp;

public class MemberDTO {
	private int memSeq;
	private String memId; 
	private String memPw;
	private String memName;
	private String memEmail;
	private String memPhone;
	private int memLevel;
	private int memStatus;
	private Timestamp memJoinDate;
	private Timestamp memDeleteDate;
	
	public MemberDTO() {
	}

	public MemberDTO(int memSeq, String memId, String memPw, String memName, String memEmail, String memPhone,
			int memLevel, int memStatus, Timestamp memJoinDate, Timestamp memDeleteDate) {
		super();
		this.memSeq = memSeq;
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.memLevel = memLevel;
		this.memStatus = memStatus;
		this.memJoinDate = memJoinDate;
		this.memDeleteDate = memDeleteDate;
	}

	public int getMemSeq() {
		return memSeq;
	}

	public void setMemSeq(int memSeq) {
		this.memSeq = memSeq;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public int getMemLevel() {
		return memLevel;
	}

	public void setMemLevel(int memLevel) {
		this.memLevel = memLevel;
	}

	public int getMemStatus() {
		return memStatus;
	}

	public void setMemStatus(int memStatus) {
		this.memStatus = memStatus;
	}

	public Timestamp getMemJoinDate() {
		return memJoinDate;
	}

	public void setMemJoinDate(Timestamp memJoinDate) {
		this.memJoinDate = memJoinDate;
	}

	public Timestamp getMemDeleteDate() {
		return memDeleteDate;
	}

	public void setMemDeleteDate(Timestamp memDeleteDate) {
		this.memDeleteDate = memDeleteDate;
	}

	@Override
	public String toString() {
		return "MemberDTO [memSeq=" + memSeq + ", memId=" + memId + ", memPw=" + memPw + ", memName=" + memName
				+ ", memEmail=" + memEmail + ", memPhone=" + memPhone + ", memLevel=" + memLevel + ", memStatus="
				+ memStatus + ", memJoinDate=" + memJoinDate + ", memDeleteDate=" + memDeleteDate + "]";
	}
	
}
