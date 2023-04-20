package kr.mang.model;

public class MemberVO {

	private String ID ;
	private String pw ;
	private String tell ;
	private String area ;
	private String name ;
	private String  nickName;
	private String  Manner;
	
	public MemberVO(String iD, String pw, String tell, String area, String name, String nickName, String manner) {
		super();
		ID = iD;
		this.pw = pw;
		this.tell = tell;
		this.area = area;
		this.name = name;
		this.nickName = nickName;
		Manner = manner;
	}
	
	public MemberVO() {
		
	}
	
	
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTell() {
		return tell;
	}
	public void setTell(String tell) {
		this.tell = tell;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getManner() {
		return Manner;
	}
	public void setManner(String manner) {
		Manner = manner;
	}
	
	
	
	
}
