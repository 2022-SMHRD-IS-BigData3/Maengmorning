package kr.mang.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

// Command 인터페이스를 구현하는 클래스 만들기
public class ProductInput implements Command {
	// 이미지 업로드할 디렉토리

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 양식에서 값 가져오기
		System.out.println("1");
		String file_name = request.getParameter("file_name");
		System.out.println("file_name: " + file_name);
		String title = request.getParameter("title");
		String items_state = request.getParameter("items_state");
		String price = request.getParameter("price");
		Date up_date = new Date();
		System.out.println(title);
		System.out.println(items_state);
		System.out.println(price);
	
		

	
	

		System.out.println(2);
		// 양식에서 이미지 파일 가져오기
		Part imgPart = request.getPart("file_name");
		InputStream imgStream = null;
		String imgName = null;
		System.out.println(imgPart);
		// 이미지가 업로드되었는지 확인
		if (imgPart != null) {
			System.out.println(3);
			imgStream = imgPart.getInputStream();
			imgName = imgPart.getSubmittedFileName();
			System.out.println(imgStream);
			System.out.println("확인확인>>"+imgName);
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

		// 값을 사용하여 새 ProductlistVO 개체를 만듭니다.
		System.out.println(6);
		// 위에서 받아온 데이터 파라메터 수집
		ProductlistVO vo = new ProductlistVO();
		vo.setTitle(title);
		vo.setItems_state(items_state);
		vo.setPrice(price);

		// 데이터를 데이터베이스에 삽입
		System.out.println(7);
		// 데이터 넘겨받아서 db에 저장 (productlistDAO로 이동)
				ProductlistDAO dao = new ProductlistDAO();
				dao.productInput(vo);

		// 사용자를 성공 페이지로 리디렉션
		System.out.println(8);
		return "Productdetail.do";
	}

}
