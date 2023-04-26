package kr.mang.model;

import java.util.Date;

public class ImgUploadVO {

		String items_img_id;
		String path_img;
		Date upload_date;
		String file_name;
		
		public ImgUploadVO() {}
		
		
		public ImgUploadVO(String items_img_id, String path_img, Date upload_date, String file_name) {
			super();
			this.items_img_id = items_img_id;
			this.path_img = path_img;
			this.upload_date = upload_date;
			this.file_name = file_name;
		}
		public String getItems_img_id() {
			return items_img_id;
		}
		public void setItems_img_id(String items_img_id) {
			this.items_img_id = items_img_id;
		}
		public String getPath_img() {
			return path_img;
		}
		public void setPath_img(String path_img) {
			this.path_img = path_img;
		}
		public Date getUpload_date() {
			return upload_date;
		}
		public void setUpload_date(Date upload_date) {
			this.upload_date = upload_date;
		}
		public String getFile_name() {
			return file_name;
		}
		public void setFile_name(String file_name) {
			this.file_name = file_name;
		}
		
		
	

}
