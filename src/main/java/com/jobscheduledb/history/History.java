package com.jobscheduledb.history;

public class History {
	private int sNo;
	private String fileName;
	private String dateTime;
	private String status;
	
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getsNo() {
		return sNo;
	}
	public void setsNo(int sNo) {
		this.sNo = sNo;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getDateTime() {
		return dateTime;
	}
	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}
	
	
	public History(int sNo, String fileName, String dateTime, String status) {
		super();
		this.sNo = sNo;
		this.fileName = fileName;
		this.dateTime = dateTime;
		this.status = status;
	}
	public History() {
		super();
	}

	

}
