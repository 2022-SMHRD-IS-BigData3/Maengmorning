package kr.mang.frontcontroller;

import java.io.IOException;
import java.util.HashMap;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.mang.controller.ProductList;
import kr.mang.controller.ProductSearch;
import kr.mang.controller.mainList;
import kr.mang.controller.BoardInput;
import kr.mang.controller.BoardList;
import kr.mang.controller.BoardListIf;
import kr.mang.controller.BoardSearch;
import kr.mang.controller.Boarddetail;
import kr.mang.controller.Command;
import kr.mang.controller.Comment;
import kr.mang.controller.GetComment;
import kr.mang.controller.JoinService;
import kr.mang.controller.ListIf;
import kr.mang.controller.LoginService;
import kr.mang.controller.MyList;
import kr.mang.controller.MydetailBuyList;
import kr.mang.controller.MydetailList;
import kr.mang.controller.ProductDetail;
import kr.mang.controller.ProductInput;



// url이 .do로 끝나는 모든 요청에 대해 처리하는 서블릿 
@WebServlet("*.do")
@MultipartConfig(
		location = "C:/",
		maxFileSize = -1,
		maxRequestSize = -1,
		fileSizeThreshold = 1024
		)

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String,Command> map = null;
	@Override
	public void init() throws ServletException {
		map = new HashMap<>();
		map.put("Login.do",new LoginService());
		map.put("Join.do",new JoinService());
		map.put("main.do", new mainList());
		map.put("MyList.do", new MyList());
		map.put("mypagesell.do", new MydetailList());
		map.put("mypagebuy.do", new MydetailBuyList());
		
		map.put("ProductList.do",new ProductList());
		map.put("ProductDetail.do", new ProductDetail());
		map.put("ProductInput.do", new ProductInput());
		
		map.put("BoardList.do", new BoardList());
		map.put("Boarddetail.do", new Boarddetail());
		map.put("BoardInput.do", new BoardInput());
		map.put("Comment.do", new Comment());
		map.put("GetComment.do", new GetComment());
		
		map.put("ListIf.do", new ListIf());
		map.put("main3.do", new ListIf());
		map.put("main2.do", new BoardListIf());
		map.put("ProductSearch.do", new ProductSearch());
		map.put("BoardSearch.do", new BoardSearch());
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
			finalpath = finaluri.replaceAll("Go","").toLowerCase().replaceAll(".do", ".jsp");
		}else {
			com =map.get(finaluri);
			finalpath = com.execute(request, response);
		}
		
		if(finalpath == null) {
		}
		else if (finalpath.contains("redirect:/")) {
			response.sendRedirect(finalpath.substring(10));
		} else {
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/" +finalpath);
		
			rd.forward(request, response);
		}
	}

}
