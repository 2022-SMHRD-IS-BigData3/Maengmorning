package kr.mang.controller;

import java.io.IOException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;
import kr.mang.model.ProductlistDAO;
import kr.mang.model.ProductlistVO;

public class BoardInput implements Command {
  public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String savePath = request.getServletContext().getRealPath("/boarduploads");
    int maxSize = 1024 * 1024 * 10; // 10MB

    MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
    
    String file_name = multi.getFilesystemName("file_name");
    String title = multi.getParameter("title");
    String board_content = multi.getParameter("board_content");
   
    Date up_date = new Date();
    System.out.println(file_name);
    System.out.println(title);
    System.out.println(board_content);
    
    System.out.println(up_date);
    // 위에서 받아온 데이터 파라메터 수집
    BoardVO vo = new BoardVO();
    vo.setTitle(title);
    vo.setBoard_content(board_content);
    vo.setFile_name(file_name);
    System.out.println("파라메터 수집 ");
    // 데이터 넘겨받아서 db에 저장 (productlistDAO로 이동)
    BoardDAO dao = new BoardDAO();
    dao.BoardInput(vo);
    dao.imgInput(vo);
    System.out.println("돌아옴");
    // 사용자를 성공 페이지로 리디렉션
    return "GoBoardList.do";
  }
}