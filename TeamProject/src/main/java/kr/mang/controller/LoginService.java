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
		String user_id =request.getParameter("user_id");
		String pw = request.getParameter("pw");
		
		System.out.println("입력한 유저 아이디 >> " + user_id);
		System.out.println(pw);
		
		
		MemberVO vo = new MemberVO();
		
		vo.setUser_id(user_id);
		vo.setPw(pw);
		MemberDAO dao = new MemberDAO();
		MemberVO result= dao.login(vo);
		System.out.println("이거 뭐들어오내"+ result.getNickName());
		
		if (result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
		}
		return "redirect:/main.do";
	}

}
