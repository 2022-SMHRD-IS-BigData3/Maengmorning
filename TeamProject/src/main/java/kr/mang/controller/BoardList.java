package kr.mang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;
import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;

public class BoardList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		BoardDAO dao = new BoardDAO();
		MemberDAO mdao = new MemberDAO();
		
		List<BoardVO> list = dao.BoardList();
		List<MemberVO> area = mdao.getArea();
		
		
		request.setAttribute("Blist",list );
		request.setAttribute("area", area);
		
		return "boardlist.jsp";
		
	}

}