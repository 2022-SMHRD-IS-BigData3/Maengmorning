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
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class BoardSearch implements Command {
	private static final long serialVersionUID = 1L;
       
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		
		System.out.println("커뮤니티 검색시작");
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = new ArrayList<>();

		list = dao.BoardSearch(search);
		request.setAttribute("list", list);
		    

		return "searchpage1.jsp";
	}

}
