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

@WebServlet("/ListIf")
public class ListIf implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response)
	        throws IOException, ServletException {
	    System.out.println("조회시작");

	    ProductlistDAO dao = new ProductlistDAO();
	    List<ProductlistVO> list = new ArrayList<>();

	    list = dao.listif();
	    request.setAttribute("list", list);
	    

	    return "main3.jsp";
	}
       
  
}
