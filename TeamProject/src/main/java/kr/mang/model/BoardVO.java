package kr.mang.model;

public class BoardVO {

	private int board_id;
	private String title;
	private String board_content;
	private int write_date;
	private String user_id;
	private String b_comment_id;
	private String board_img_id;

	public int getBoard_id() {
		return board_id;
	}

	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public int getWrite_date() {
		return write_date;
	}

	public void setWrite_date(int write_date) {
		this.write_date = write_date;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getB_comment_id() {
		return b_comment_id;
	}

	public void setB_comment_id(String b_comment_id) {
		this.b_comment_id = b_comment_id;
	}

	public String getBoard_img_id() {
		return board_img_id;
	}

	public void setBoard_img_id(String board_img_id) {
		this.board_img_id = board_img_id;
	}

	public BoardVO(int board_id, String title, String board_content, int write_date, String user_id, String b_comment_id,
			String board_img_id) {
		super();
		this.board_id = board_id;
		this.title = title;
		this.board_content = board_content;
		this.write_date = write_date;
		this.user_id = user_id;
		this.b_comment_id = b_comment_id;
		this.board_img_id = board_img_id;
	}

	public BoardVO() {

	}

}
