package com.model;

public class MessageDTO {
	
	private int num;
	private String name;
	private String email;
	private String contents;
	private String indate;
	
	public MessageDTO(String name, String email, String contents) {
		// super();
		this.name = name;
		this.email = email;
		this.contents = contents;
	}
	public MessageDTO(int num, String name, String email, String contents, String indate) {
		// super();
		this.num = num;
		this.name = name;
		this.email = email;
		this.contents = contents;
		this.indate = indate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getIndate() {
		return indate;
	}
	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	
}
