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
	// 업로드 파일 사이즈
	int fileSize = 5*1024*1024;
	// 명령 인터페이스에서 실행 방법 구현
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 업로드될 폴더 경로
		String uploadPath = request.getServletContext().getRealPath("/uploads");
		System.out.println("uploadpath는?"+uploadPath);
		try {
			//파일업로드
			//MultipartRequest multi = new Mul
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		
		
		
		
		return null;
	}  
}