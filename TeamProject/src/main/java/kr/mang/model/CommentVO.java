package kr.mang.model;

public class CommentVO {
	public String b_comment_id ;
	public String board_comment ;
	public String user_id ;
	public String c_write_date ;
	public int board_id ;
	
	
	public CommentVO() {
		
	}
	
	public CommentVO(String b_comment_id, String board_comment, String user_id, String c_write_date, int board_id) {
		super();
		this.b_comment_id = b_comment_id;
		this.board_comment = board_comment;
		this.user_id = user_id;
		this.c_write_date = c_write_date;
		this.board_id = board_id;
	}
	public String getB_comment_id() {
		return b_comment_id;
	}
	public void setB_comment_id(String b_comment_id) {
		this.b_comment_id = b_comment_id;
	}
	public String getBoard_comment() {
		return board_comment;
	}
	public void setBoard_comment(String board_comment) {
		this.board_comment = board_comment;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getC_write_date() {
		return c_write_date;
	}
	public void setC_write_date(String c_write_date) {
		this.c_write_date = c_write_date;
	}
	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	
	
	
}
