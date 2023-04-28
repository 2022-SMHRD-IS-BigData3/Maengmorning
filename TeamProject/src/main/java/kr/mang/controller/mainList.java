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
       System.out.println("����Ʈ");
        
       ProductlistDAO dao = new ProductlistDAO();
        MemberDAO mdao = new MemberDAO();
        BoardDAO bdao = new BoardDAO();
      MemberDAO bmdao = new MemberDAO();
      // �߰�ǰ �Խ��� ����Ʈ ���� ���
        List<ProductlistVO> list = dao.productList();
      List<MemberVO> area = mdao.getArea();
      List<ProductlistVO> file_name = dao.imgList();

      // Ŀ�´�Ƽ �Խ��� ����Ʈ ���� ���
      List<BoardVO> blist = bdao.BoardList();
      List<MemberVO> barea = bmdao.getArea();
      
      // �߰�ǰ �Խ��� ����Ʈ �� ��������
      request.setAttribute("productlist", list);
      request.setAttribute("area", area);
      request.setAttribute("imglist", file_name);
      System.out.println(file_name.size());
      System.out.println(area.size());
      System.out.println(list);
      System.out.println(file_name);
      // Ŀ�´�Ƽ �Խ��� ����Ʈ �� ��������
      request.setAttribute("Blist",blist );
      request.setAttribute("barea", barea);
      
      return "main.jsp";
    }
}