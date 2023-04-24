package kr.mang.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;



public class ProductInput implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String title = request.getParameter("title");
	        String sellerid = request.getParameter("sellerid");
	        String area = request.getParameter("area");
	        String pro_state = request.getParameter("pro_state");
	        String price = request.getParameter("price");

	        Part part = request.getPart("imgurl");
	        String imgurl = part.getSubmittedFileName();
	        String uploadPath = request.getServletContext().getRealPath("/images");

	        String fileName = sellerid + "_" + imgurl;

	        ProductlistVO vo = new ProductlistVO();
	        vo.setTitle(title);
	        vo.setSellerid(sellerid);
	        vo.setImgurl(fileName);
	        vo.setArea(area);
	        vo.setPro_state(pro_state);
	        vo.setPrice(price);

	        ProductlistDAO dao = new ProductlistDAO();
	        dao.productInput(vo);

	        part.write(uploadPath + File.separator + fileName);
		return "중고거래글등록.jsp";
	}

	
		

}
