package kr.mang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;

public class BoardList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		BoardDAO dao = new BoardDAO();
		List<BoardVO> list = dao.BoardList();
		request.setAttribute("Blist",list );
		
		return "커뮤니티목록.jsp";
	}

}
