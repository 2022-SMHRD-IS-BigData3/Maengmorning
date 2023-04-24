package kr.mang.model;

import java.util.Date;

public class ProductlistVO {
	private int pro_id;
	private String sellerid;
	private String imgurl;
	private String price;
	private String title;
	private String area;
	private String pro_state;
	private Date pro_date;
	
	public ProductlistVO() {}
	
	public ProductlistVO(int pro_id, String sellerid, String imgurl, String price, String title, String area,
			String pro_state, Date pro_date) {
		super();
		this.pro_id = pro_id;
		this.sellerid = sellerid;
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

	public String getSellerid() {
		return sellerid;
	}

	public void setSellerid(String sellerid) {
		this.sellerid = sellerid;
	}

	public String getImgurl() {
		return imgurl;
	}

	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
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
