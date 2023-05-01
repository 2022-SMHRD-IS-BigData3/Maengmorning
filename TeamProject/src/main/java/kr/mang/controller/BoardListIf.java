package kr.mang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;


@WebServlet("/BoardListIf")
public class BoardListIf implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response)
	        throws IOException, ServletException {
		System.out.println("조회시작");
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = new ArrayList<>();
		
		list = dao.boardlistif();
		request.setAttribute("list", list);
		
		return "boarddetail.jsp";
	}

}
