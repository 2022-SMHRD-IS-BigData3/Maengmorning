package kr.mang.controller;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class ProductInput implements Command {
  public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
//	  HttpSession session = request.getSession();
//	    if (session.getAttribute("member") == null) {
//	        return "login.jsp"; //로그인 안되어있으면 로그인페이지로 이동
//	    }
	  
	  
	String savePath = request.getServletContext().getRealPath("/uploads");
    int maxSize = 1024 * 1024 * 10; // 10MB

    MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
    
    String file_name = multi.getFilesystemName("file_name");
    String title = multi.getParameter("title");
    String items_state = multi.getParameter("items_state");
    String price = multi.getParameter("price");
    Date upload_date = new Date();
    String user_id = multi.getParameter("user_id");
    //String user_id = (String)session.getAttribute("user_id");
    System.out.println(file_name);
    System.out.println(title);
    System.out.println(items_state);
    System.out.println(price);
    System.out.println(upload_date);
    System.out.println(user_id);
     //위에서 받아온 데이터 파라메터 수집
    ProductlistVO vo = new ProductlistVO();
    vo.setTitle(title);
    vo.setItems_state(items_state);
    vo.setPrice(price);
    vo.setFile_name(file_name);
    vo.setUser_id(user_id);
    System.out.println("파라메터 수집 ");
    //데이터 넘겨받아서 db에 저장 (productlistDAO로 이동)
    ProductlistDAO dao = new ProductlistDAO();
    dao.productInput(vo);
    dao.imgInput(vo);
    System.out.println("돌아옴");
    // 사용자를 성공 페이지로 리디렉션

    response.sendRedirect("ProductList.do");
    
    
    return null;
  }
}
