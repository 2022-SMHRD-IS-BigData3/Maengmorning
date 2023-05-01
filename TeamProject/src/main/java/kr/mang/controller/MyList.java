package kr.mang.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.model.MemberDAO;
import kr.mang.model.MemberVO;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class MyList implements Command {
    public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("리스트");
        
    	ProductlistDAO dao = new ProductlistDAO();
        List<ProductlistVO> mylist = dao.myList();
		System.out.println("mylist"+mylist);
        request.setAttribute("getmylist", mylist);
		
		return "mypagesell.jsp";
    }
}