package kr.mang.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;
import kr.mang.model.MemberDAO;

@WebServlet("/board")
public class ProductDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ProductDetailController() {
        super();
    }
	protected String excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ProductlistDAO dao = new ProductlistDAO();
		
		
		
		return "상품상세정보.jsp";
	}

}
