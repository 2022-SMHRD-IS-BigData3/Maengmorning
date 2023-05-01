package kr.mang.model;

import java.util.Date;

public class ProductlistVO {
	private int items_id;
	private String title;
	private String items_state;
	private String price;
	private Date up_date;
	private String user_id;
	private String items_img_id;
	private String tag_id;
	
	
	private String path_img;

	private String file_name;
	
	private String buy_user_id;
	private String history_id;
	private Date trade_date;
	
	public ProductlistVO() {}
	
	
	public ProductlistVO(int items_id, String title, String items_state, String price, Date up_date, String user_id,
			String items_img_id, String tag_id, String path_img, String file_name, String buy_user_id,
			String history_id, Date trade_date) {
		super();
		this.items_id = items_id;
		this.title = title;
		this.items_state = items_state;
		this.price = price;
		this.up_date = up_date;
		this.user_id = user_id;
		this.items_img_id = items_img_id;
		this.tag_id = tag_id;
		this.path_img = path_img;
		this.file_name = file_name;
		this.buy_user_id = buy_user_id;
		this.history_id = history_id;
		this.trade_date = trade_date;
	}


	public String getBuy_user_id() {
		return buy_user_id;
	}

	public void setBuy_user_id(String buy_user_id) {
		this.buy_user_id = buy_user_id;
	}

	public String getHistory_id() {
		return history_id;
	}

	public void setHistory_id(String history_id) {
		this.history_id = history_id;
	}

	public Date getTrade_date() {
		return trade_date;
	}

	public void setTrade_date(Date trade_date) {
		this.trade_date = trade_date;
	}
	
	public int getItems_id() {
		return items_id;
	}

	public void setItems_id(int items_id) {
		this.items_id = items_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getItems_state() {
		return items_state;
	}

	public void setItems_state(String items_state) {
		this.items_state = items_state;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getUp_date() {
		return up_date;
	}

	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getItems_img_id() {
		return items_img_id;
	}

	public void setItems_img_id(String items_img_id) {
		this.items_img_id = items_img_id;
	}

	public String getTag_id() {
		return tag_id;
	}

	public void setTag_id(String tag_id) {
		this.tag_id = tag_id;
	}

	public String getPath_img() {
		return path_img;
	}

	public void setPath_img(String path_img) {
		this.path_img = path_img;
	}

	

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	
	
	
	
	
	
	
}