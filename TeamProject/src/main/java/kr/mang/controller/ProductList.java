package kr.mang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class ProductList implements Command {
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("리스트");
        
    	ProductlistDAO dao = new ProductlistDAO();
        MemberDAO mdao = new MemberDAO();
		
        List<ProductlistVO> list = dao.productList();
		List<MemberVO> area = mdao.getArea();
		List<ProductlistVO> fileName = dao.imgList();
		
		request.setAttribute("productlist", list);
		request.setAttribute("area", area);
		request.setAttribute("imglist", fileName);
		System.out.println(fileName);
		System.out.println(area);
		System.out.println(list);
		
		return "productlist.jsp";
    }
}