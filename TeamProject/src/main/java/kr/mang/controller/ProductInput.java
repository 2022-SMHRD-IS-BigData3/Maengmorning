package kr.mang.controller;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class ProductInput implements Command {
  public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String savePath = request.getServletContext().getRealPath("/uploads");
    int maxSize = 1024 * 1024 * 10; // 10MB

    MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
    
    String file_name = multi.getFilesystemName("file_name");
    String title = multi.getParameter("title");
    String items_state = multi.getParameter("items_state");
    String price = multi.getParameter("price");
    Date up_date = new Date();
    System.out.println(file_name);
    System.out.println(title);
    System.out.println(items_state);
    System.out.println(price);
    System.out.println(up_date);
    // 위에서 받아온 데이터 파라메터 수집
    ProductlistVO vo = new ProductlistVO();
    vo.setTitle(title);
    vo.setItems_state(items_state);
    vo.setPrice(price);
    vo.setFile_name(file_name);
    System.out.println("파라메터 수집 ");
    // 데이터 넘겨받아서 db에 저장 (productlistDAO로 이동)
    ProductlistDAO dao = new ProductlistDAO();
    dao.productInput(vo);
    dao.imgInput(vo);
    System.out.println("돌아옴");
    // 사용자를 성공 페이지로 리디렉션
    return "Goproductlist.do";
  }
}
