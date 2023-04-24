package kr.mang.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;

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
	        Date pro_date = new Date();
	        // 이미지 업로드
	        Part imgPart = request.getPart("imgurl");
	        InputStream imgStream = null;
	        String imgName = null;
	        if(imgPart !=null) {
	        	imgStream = imgPart.getInputStream();
	        	imgName = imgPart.getSubmittedFileName();
	        }
	        // 업로드한 이미지 저장 
	        String imgPath = null;
	        if(imgStream != null && imgName !=null && !imgName.isEmpty()) {
	        	String webPath = "/uploads"; // 이미지 저장할 경로 설정
	        	String realPath = request.getServletContext().getRealPath(webPath);
	        	imgPath = webPath + imgName;
	        	Files.copy(imgStream, Paths.get(realPath, imgName));
	        }
	        ProductlistVO vo = new ProductlistVO();
	        vo.setTitle(title);
	        vo.setSellerid(sellerid);
	        vo.setArea(area);
	        vo.setPro_state(pro_state);
	        vo.setPro_date(pro_date);
	        vo.setPrice(price);
	        vo.setImgurl(imgPath);
	        
	        ProductlistDAO dao = new ProductlistDAO();
	        dao.productInput(vo);
		return "중고거래글등록.jsp";
	}

	
		

}
