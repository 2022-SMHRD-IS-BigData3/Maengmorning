package kr.mang.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.mang.model.BoardVO;
import kr.mang.model.CommentDAO;
import kr.mang.model.CommentVO;

@WebServlet("/Comment")
public class Comment implements Command {
    
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out = null;
		 Gson gson = null;
		System.out.println("댓글등록1");
		
		String board_comment = request.getParameter("board_comment");
		int board_id = Integer.parseInt(request.getParameter("board_id")); 
		String user_id = request.getParameter("user_id");
		
		CommentVO vo = new CommentVO();
		CommentDAO dao = new CommentDAO();
		
		vo.setBoard_comment(board_comment);
		vo.setBoard_id(board_id);
		vo.setUser_id(user_id);
		
		 int row = dao.comment(vo);
		 if (row > 0) {
			 out = response.getWriter();
				 gson = new Gson();
				 out.print(gson.toJson(row));
				 
		 }
		 return null; 

	}
}