package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		String user_id =request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(user_id);
		System.out.println(pw);
		
		
		MemberVO vo = new MemberVO();
		
		vo.setId(user_id);
		vo.setPw(pw);
		MemberDAO dao = new MemberDAO();
		MemberVO result= dao.login(vo);
		System.out.println("로그인 서비스 >>"+result);
		
		if (result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
		}
		return "redirect:/main.do";
	}

}
