package kr.mang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;

@WebServlet("/Comment")
public class Comment implements Command {
    
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("댓글등록1");
		
		String comment = request.getParameter("comment");
		System.out.println(comment);
		
		BoardVO vo = new BoardVO();
		BoardDAO dao = new BoardDAO();
		
		List<BoardVO> list = new ArrayList<>();
		
		vo.setBoard_comment(comment); 
		
		list = dao.comment(vo);
		
		request.setAttribute("comments", list);

		return "boarddetail.jsp"; 
	}
}