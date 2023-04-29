package kr.mang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;
import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class mainList implements Command {
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("리스트");
        
//    	ProductlistDAO dao = new ProductlistDAO();
//        MemberDAO mdao = new MemberDAO();
//        BoardDAO bdao = new BoardDAO();
//		MemberDAO bmdao = new MemberDAO();
//		// 중고물품 게시판 리스트 메인 출력
//        List<ProductlistVO> list = dao.productList();
//		List<MemberVO> area = mdao.getArea();
//		List<ProductlistVO> file_name = dao.imgList();
//
//		// 커뮤니티 게시판 리스트 메인 출력
//		List<BoardVO> blist = bdao.BoardList();
//		List<MemberVO> barea = bmdao.getArea();
//		
//		// 중고물품 게시판 리스트 값 가져오기
//		request.setAttribute("productlist", list);
//		request.setAttribute("area", area);
//		request.setAttribute("imglist", file_name);
//		System.out.println(file_name.size());
//		System.out.println(area.size());
//		System.out.println(list);
//		System.out.println(file_name);
//		// 커뮤니티 게시판 리스트 값 가져오기
//		request.setAttribute("Blist",blist );
//		request.setAttribute("barea", barea);
//		
    	
    	ProductList prolist = new ProductList();
    	
			String productListResult = prolist.execute(request,response);
		
			request.setAttribute("mainlist", productListResult);
    	
		return "main.jsp";
    }
}