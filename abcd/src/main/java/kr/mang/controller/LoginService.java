package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String id =request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id);
		System.out.println(pw);
		
		
		MemberVO vo = new MemberVO();
		
		vo.setId(id);
		vo.setPw(pw);
		MemberDAO dao = new MemberDAO();
		String mvo= dao.login(vo);
		
		if (mvo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("uId", mvo);
		}
		
		return "로그인성공.jsp";
	}

}
