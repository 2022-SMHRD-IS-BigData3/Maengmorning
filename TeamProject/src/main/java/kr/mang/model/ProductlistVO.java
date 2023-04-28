package kr.mang.model;

import java.util.Date;

public class ProductlistVO {
	private int itemsId;
	private String title;
	private String itemsState;
	private String price;
	private Date upDate;
	private String userId;
	private String itemsImgId;
	private String tagId;
	
	
	private String pathImg;
	private Date uploadDate;
	private String fileName;
	
	public ProductlistVO() {}
	
	public ProductlistVO(int itemsId, String title, String itemsState, String price, Date upDate, String userId,
			String itemsImgId, String tagId, String pathImg, Date uploadDate, String fileName) {
		super();
		this.itemsId = itemsId;
		this.title = title;
		this.itemsState = itemsState;
		this.price = price;
		this.upDate = upDate;
		this.userId = userId;
		this.itemsImgId = itemsImgId;
		this.tagId = tagId;
		this.pathImg = pathImg;
		this.uploadDate = uploadDate;
		this.fileName = fileName;
	}




	public int getItemsId() {
		return itemsId;
	}

	public void setItemsId(int itemsId) {
		this.itemsId = itemsId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getItemsState() {
		return itemsState;
	}

	public void setItemsState(String itemsState) {
		this.itemsState = itemsState;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getUpDate() {
		return upDate;
	}

	public void setUpDate(Date upDate) {
		this.upDate = upDate;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getItemsImgId() {
		return itemsImgId;
	}

	public void setItemsImgId(String itemsImgId) {
		this.itemsImgId = itemsImgId;
	}

	public String getTagId() {
		return tagId;
	}

	public void setTagId(String tagId) {
		this.tagId = tagId;
	}

	public String getPathImg() {
		return pathImg;
	}

	public void setPathImg(String pathImg) {
		this.pathImg = pathImg;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
	
	
	
}