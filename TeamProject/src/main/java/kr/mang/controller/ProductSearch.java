package kr.mang.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

@WebServlet("/ProductSearch")
public class ProductSearch implements Command {
	private static final long serialVersionUID = 1L;
       
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		
		System.out.println("검색시작");
		
		ProductlistDAO dao = new ProductlistDAO();
		List<ProductlistVO> list = new ArrayList<>();
		List<ProductlistVO> imglist = new ArrayList<>();
		
		list = dao.ProductSearch(search);
		imglist = dao.ProductSearch(search);
		request.setAttribute("list", list);
		request.setAttribute("imglist", imglist);
		

		return "searchpage.jsp";
	}
}

