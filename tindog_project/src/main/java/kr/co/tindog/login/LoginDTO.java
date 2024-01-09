package kr.co.tindog.login;


public class LoginDTO {
	private String email;
	private String name;
	private String nickname;
	private String password;
//	private String birth;
//	private String sex;
//	private String phone;
//	private String cellphone;
//	private int post;
//	private String addr;
//	private String detailaddr;
//	private String signdate;
	private String memgrade;
public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMemgrade() {
		return memgrade;
	}
	public void setMemgrade(String memgrade) {
		this.memgrade = memgrade;
	}
	//	private String datearea;
//	private String location;	
	@Override
	public String toString() {
		return "LoginDTO [email=" + email + ", name=" + name + ", nickname=" + nickname + ", password=" + password
				+ ", memgrade=" + memgrade + "]";
	}
	
}
