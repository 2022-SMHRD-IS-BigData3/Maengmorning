package kr.mang.controller;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class ProductList implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductlistDAO dao = new ProductlistDAO();
		List<ProductlistVO> list = dao.productList();
		request.setAttribute("productlist", list);
		
		return "중고거래목록.jsp";
	
	}
}
