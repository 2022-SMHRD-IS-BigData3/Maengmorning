package kr.mang.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.controller.ProductList;
import kr.mang.controller.Command;
import kr.mang.controller.JoinService;
import kr.mang.controller.LoginService;
import kr.mang.controller.ProductDetail;




// url이 .do로 끝나는 모든 요청에 대해 처리하는 서블릿 
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String,Command> map = null;
	@Override
	public void init() throws ServletException {
		map = new HashMap<>();
		map.put("Login.do",new LoginService());
		map.put("Join.do",new JoinService());
		map.put("ProductList.do",new ProductList());
		map.put("Productdetail.do", new ProductDetail());
//		map.put("Ajax.do", new Ajax());
	}
	// ---> service 메소드 완성 !!! ---> 더이상 손 안대도 됨!!
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String finaluri = uri.substring(cp.length() + 1);
		Command com = null;
		request.setCharacterEncoding("UTF-8");
		String finalpath = null;
		if (finaluri.contains("Go")) {
			finalpath = finaluri.replaceAll("Go", "").toLowerCase().replaceAll(".do", ".jsp");
		}else {
			com =map.get(finaluri);
			finalpath = com.execute(request, response);
		}
		if(finalpath == null) {
		}
		else if (finalpath.contains("redirect:/")) {
			response.sendRedirect(finalpath.substring(10));
		} else {
//			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + finalpath);
			RequestDispatcher rd = request.getRequestDispatcher(finalpath);
			rd.forward(request, response);
		}
	}

}
