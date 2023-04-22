package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;



public class ProductInput implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String sellerid = request.getParameter("sellerid");
		String imgurl = request.getParameter("imgurl");
		String area = request.getParameter("area");
		String pro_state = request.getParameter("pro_state");
		//int price = Integer.parseInt((request.getParameter("price")));

		ProductlistVO vo = new ProductlistVO();
		vo.setTitle(title);
		vo.setSellerid(sellerid);
		vo.setImgurl(imgurl);
		vo.setArea(area);
		vo.setPro_state(pro_state);
		//vo.setPrice(price);
		
		ProductlistDAO dao = new ProductlistDAO();
		dao.productInput(vo);
		
		
		return "중고거래글등록.jsp";
	}

	
		

}
