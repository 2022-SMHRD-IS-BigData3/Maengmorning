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
    String savePath = request.getServletContext().getRealPath("/")+"uploads/";
    int maxSize = 1024 * 1024 * 10; // 10MB

    MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
    
    String fileName = multi.getFilesystemName("fileName");
    String title = multi.getParameter("title");
    String itemsState = multi.getParameter("itemsState");
    String price = multi.getParameter("price");
    Date upDate = new Date();
    System.out.println(fileName);
    System.out.println(title);
    System.out.println(itemsState);
    System.out.println(price);
    System.out.println(upDate);
    // 위에서 받아온 데이터 파라메터 수집
    ProductlistVO vo = new ProductlistVO();
    vo.setTitle(title);
    vo.setItemsState(itemsState);
    vo.setPrice(price);
    vo.setFileName(fileName);
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
