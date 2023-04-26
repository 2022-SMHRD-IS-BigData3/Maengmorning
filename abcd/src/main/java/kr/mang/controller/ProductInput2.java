package kr.mang.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Part;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;
// Command 인터페이스를 구현하는 클래스 만들기
public class ProductInput2 implements Command {
	// 이미지 업로드할 디렉토리

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String savePath = "img"; // 여기를 바꾸면 다운받는 경로 바뀜
		int uploadFileSizeLimit = 5*1024*1024; // 최대 업로드 파일 크기 5mb로 제한
		String encType = "utf-8";
		
		ServletContext context = request.getServletContext();
		String imgurl = context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : "+ imgurl);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, 				// request 객체
					imgurl, 		// 서버상의 실제 디렉토리
					uploadFileSizeLimit,	// 최대 업로드 파일 크기
					encType,				// 인코딩 방법
					new DefaultFileRenamePolicy()// 동일한 이름이 존재하면 새로운 이름이 부여됨.
					);
			// 업로드된 파일의 이름 얻기
			//String fileName = multi.getFilesystemName("imgurl"); //파일 하나만 업로드할때
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String file = (String)files.nextElement();
				String file_name = multi.getFilesystemName(file);
				// 중복된 파일을 업로드 할 경우 파일명이 바뀐다.
				String ori_file_name = multi.getOriginalFileName(file);
				out.println("<br> 업로드된 파일명: " + file_name);
				out.println("<br> 원본 파일명 : " + ori_file_name);
				out.println("<hr> " );
			}
//			if(fileName == null) { // 파일이 업로드 되지 않을 때
//				System.out.println("파일이 업로드 되지않음."); 
//				
//			}else { // 파일이 업로드 될때
//				out.println("<br> 글쓴이 : " + multi.getParameter("name"));
//				out.println("<br> 제 &nbsp; 목 : " + multi.getParameter("title"));
//				out.println("<br> 파일명 : " + fileName);
//			}
		} catch (Exception e) {
			System.out.println("예외 발생 : "+ e);
		}
		
		return "Productdetail.do";
	}

}
