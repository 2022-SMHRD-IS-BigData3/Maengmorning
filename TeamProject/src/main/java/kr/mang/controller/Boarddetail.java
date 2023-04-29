package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;
import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;

public class Boarddetail implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		int board_id = Integer.parseInt(request.getParameter("board_id"));
		
		BoardDAO dao = new BoardDAO();
		MemberDAO mdao = new MemberDAO();
		
		System.out.println("1");
		BoardVO vo =dao.BoardDetail(board_id);
		System.out.println("2");
		MemberVO mvo = mdao.BoardDetail(board_id);
		System.out.println("3");
		
		System.out.println("vo>>"+vo);
		System.out.println("mvo>>"+mvo);

		request.setAttribute("detail", vo);
		request.setAttribute("mdetail", mvo);
		
		return "boarddetail.jsp";
	}

}
