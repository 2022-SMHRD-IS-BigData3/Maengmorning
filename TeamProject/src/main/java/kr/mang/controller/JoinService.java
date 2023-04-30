package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		String user_id = request.getParameter("user_id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String area = request.getParameter("area");
		String name = request.getParameter("name");
		String nickName = request.getParameter("nickName");

		System.out.println(user_id);
		System.out.println(pw);
		System.out.println(tel);
		System.out.println(area);
		System.out.println(name);
		System.out.println(nickName);

		MemberVO vo = new MemberVO();

		vo.setUser_id(user_id);
		vo.setPw(pw);
		vo.setTel(tel);
		vo.setArea(area);
		vo.setName(name);
		vo.setNickName(nickName);

		MemberDAO dao = new MemberDAO();
		int row = dao.join(vo);
		if (row > 0) {
			request.setAttribute("nickName", nickName);

			return "GoMain.do";
		} else {

			return "GoJoin.do";

		}
	}
}
