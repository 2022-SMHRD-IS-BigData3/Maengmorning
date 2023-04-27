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
		int itemsId = Integer.parseInt(request.getParameter("itemsId"));
		System.out.println(itemsId);
		ProductlistDAO dao = new ProductlistDAO();
		ProductlistVO vo = dao.detail(itemsId);
		//MemberVO mvo = mdao.selectOne(vo.getUser_id());
		System.out.println(vo);
		request.setAttribute("detail", vo);
		return "GoProductdetail.do";
	}
}
