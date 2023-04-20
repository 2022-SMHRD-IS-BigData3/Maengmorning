package kr.mang.model;

public class MemberVO {

	private String id ;
	private String pw ;
	private String tel ;
	private String area ;
	private String name ;
	private String nickName;
	private String manner;
	
	public MemberVO(String id, String pw, String tel, String area, String name, String nickName, String manner) {
		super();
		this.id = id;
		this.pw = pw;
		this.tel = tel;
		this.area = area;
		this.name = name;
		this.nickName = nickName;
		this.manner = manner;
	}
	
	public MemberVO() {
		
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
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
		return manner;
	}

	public void setManner(String manner) {
		this.manner = manner;
	}
	
	
}
