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

public class ProductInput implements Command {
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String title = request.getParameter("title");
		String items_state = request.getParameter("items_state");
		String price = request.getParameter("price");
		Date up_date = new Date();
		System.out.println("title");
		System.out.println("items_state");
		System.out.println("price");
		// 위에서 받아온 데이터 파라메터 수집
		ProductlistVO vo = new ProductlistVO();
		// 데이터 넘겨받아서 db에 저장 (productlistDAO로 이동)
		ProductlistDAO dao = new ProductlistDAO();
		dao.productInput(vo);

		return "GoProductdetail.do";
	}

}
