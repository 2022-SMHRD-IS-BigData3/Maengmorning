package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;

public class Boarddetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		int b_id = Integer.parseInt(request.getParameter("b_id"));
		
		BoardDAO dao = new BoardDAO();
		BoardVO vo =dao.BoardDetail(b_id);
	
		request.setAttribute("detail", vo);

		return "Boarddetail.jsp";
	}

}
