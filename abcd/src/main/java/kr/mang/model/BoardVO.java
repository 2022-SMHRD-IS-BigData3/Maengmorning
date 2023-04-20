package kr.mang.model;

import java.util.Date;

public class BoardVO {
	private int pro_id;
	private String sellid;
	private String imgurl;
	private int price;
	private String title;
	private String area;
	private String pro_state;
	private Date pro_date;
	
	public BoardVO() {}

	public BoardVO(int pro_id, String sellid, String imgurl, int price, String title, String area, String pro_state,
			Date pro_date) {
		super();
		this.pro_id = pro_id;
		this.sellid = sellid;
		this.imgurl = imgurl;
		this.price = price;
		this.title = title;
		this.area = area;
		this.pro_state = pro_state;
		this.pro_date = pro_date;
	}

	public int getPro_id() {
		return pro_id;
	}

	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}

	public String getSellid() {
		return sellid;
	}

	public void setSellid(String sellid) {
		this.sellid = sellid;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPro_state() {
		return pro_state;
	}

	public void setPro_state(String pro_state) {
		this.pro_state = pro_state;
	}

	public Date getPro_date() {
		return pro_date;
	}

	public void setPro_date(Date pro_date) {
		this.pro_date = pro_date;
	}
	
	
}
