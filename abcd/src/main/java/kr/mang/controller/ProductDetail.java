package kr.mang.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;
public class ProductDetail implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pro_id = Integer.parseInt(request.getParameter("pro_id"));
		ProductlistDAO dao = new ProductlistDAO();
		System.out.println("여기왔다감.");
		ProductlistVO vo = dao.detail(pro_id);
		request.setAttribute("detail", vo);
		System.out.println("여기왔다갔니?");
		
		return "상품상세정보.jsp";
	}
}
