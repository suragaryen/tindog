package kr.co.tindog.chat;

import lombok.Getter;
import lombok.Setter;


public class ChatDTO {
	private int droomno ;
	private String sender;
	private String message;
	public int getDroomno() {
		return droomno;
	}
	public void setDroomno(int droomno) {
		this.droomno = droomno;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "ChatDTO [droomno=" + droomno + ", sender=" + sender + ", message=" + message + "]";
	}	
	
	
	
}
