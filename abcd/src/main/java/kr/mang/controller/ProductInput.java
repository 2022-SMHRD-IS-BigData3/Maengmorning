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

// Command 인터페이스를 구현하는 클래스 만들기
public class ProductInput implements Command {

	// 명령 인터페이스에서 실행 방법 구현
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
    // 양식에서 값 가져오기
	  System.out.println("1");
    String title = request.getParameter("title");
    String sellerid = request.getParameter("sellerid");
    String area = request.getParameter("area");
    String pro_state = request.getParameter("pro_state");
    String price = request.getParameter("price");
    Date pro_date = new Date();
    System.out.println("title: " + title);
    System.out.println("sellerid: " + sellerid);
    System.out.println("area: " + area);
    System.out.println("pro_state: " + pro_state);
    System.out.println("price: " + price);

    System.out.println(2);
     //양식에서 이미지 파일 가져오기
   Part imgPart = request.getPart("imgurl");
   InputStream imgStream = null;
    String imgName = null;
    System.out.println(imgPart);
     //이미지가 업로드되었는지 확인
    if (imgPart != null) {
    	System.out.println(3);
      imgStream = imgPart.getInputStream();
      imgName = imgPart.getSubmittedFileName();
      System.out.println(imgStream);
      System.out.println(imgName);
    }
    
    // 이미지 파일 업로드
    System.out.println(4);
    String imgPath = null;
    if (imgStream != null && imgName != null && !imgName.isEmpty()) {
    	System.out.println(5);
      String webPath = "/uploads"; // 이미지를 저장할 경로 정의
      System.out.println(webPath);
      String realPath = request.getServletContext().getRealPath(webPath);
      System.out.println(realPath);
      System.out.println(Paths.get(realPath, imgName));
      imgPath = webPath + "/" + imgName;
      System.out.println(imgPath);
      Files.copy(imgStream, Paths.get(realPath, imgName));
    }
    
     //값을 사용하여 새 ProductlistVO 개체를 만듭니다.
    System.out.println(6);
    ProductlistVO vo = new ProductlistVO();
    vo.setTitle(title);
    vo.setSellerid(sellerid);
    vo.setArea(area);
    vo.setPro_state(pro_state);
    vo.setPro_date(pro_date);
    vo.setPrice(price);
    vo.setImgurl(imgPath);
    
    // 데이터를 데이터베이스에 삽입
    System.out.println(7);
    ProductlistDAO dao = new ProductlistDAO();
    dao.productInput(vo);
    
    // 사용자를 성공 페이지로 리디렉션
    System.out.println(8);
    return "Productdetail.do";
  }
}