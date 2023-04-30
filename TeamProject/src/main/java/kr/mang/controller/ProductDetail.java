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
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		int items_id = Integer.parseInt(request.getParameter("items_id"));
		System.out.println(items_id);
		
		
		ProductlistDAO dao = new ProductlistDAO();
		MemberDAO mdao = new MemberDAO();
		
		System.out.println("1");
		ProductlistVO vo = dao.detail(items_id);
		System.out.println("2");
		System.out.println(vo);
		MemberVO mvo = mdao.areaDetail(items_id);
		System.out.println("3");
		System.out.println(mvo);
		
		request.setAttribute("detail", vo);
		request.setAttribute("prodetail", mvo);
		
		
		return "productdetail.jsp";
	}
}
