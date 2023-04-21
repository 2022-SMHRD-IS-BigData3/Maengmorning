package kr.mang.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ProductDetail implements Command{
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pro_id = Integer.parseInt(request.getParameter("pro_id"));
		
		
		return null;
	}
}
