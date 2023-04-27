package kr.mang.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;
public class ProductDetail implements Command{
	private ProductlistDAO productlistDAO;
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int items_id = Integer.parseInt(request.getParameter("items_id"));
		ProductlistDAO dao = new ProductlistDAO();
		MemberDAO mdao = new MemberDAO();
		ProductlistVO vo = dao.detail(items_id);
		//MemberVO mvo = mdao.selectOne(vo.getUser_id());
		request.setAttribute("detail", vo);
		return "GoProductdetail.do";
	}
}
