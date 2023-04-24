package kr.mang.model;

public class BoardVO {

	private int b_id;
	private int com_id;
	private String userid;
	private String title;
	private String cont;
	private int view_cnt;
	private int writer_date;
	private String area;

	public String getArea() {
		return area;    
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public int getCom_id() {
		return com_id;
	}

	public void setCom_id(int com_id) {
		this.com_id = com_id;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCont() {
		return cont;
	}

	public void setCont(String cont) {
		this.cont = cont;
	}

	public int getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}

	public int getWriter_date() {
		return writer_date;
	}

	public void setWriter_date(int writer_date) {
		this.writer_date = writer_date;
	}

	public BoardVO(int b_id, int com_id, String userid, String title, String cont, int view_cnt, int writer_date, String area) {
		super();
		this.b_id = b_id;
		this.com_id = com_id;
		this.userid = userid;
		this.title = title;
		this.cont = cont;
		this.view_cnt = view_cnt;
		this.writer_date = writer_date;
		this.area = area;
	}

	public BoardVO() {

	}

}
