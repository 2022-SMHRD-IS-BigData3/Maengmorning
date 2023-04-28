package kr.mang.controller;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import kr.mang.model.BoardDAO;
import kr.mang.model.BoardVO;
import kr.mang.model.MemberVO;

public class comment implements Command {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        HttpSession session = request.getSession();
        String comment = (String)session.getAttribute("comment");

        BoardVO vo = new BoardVO();
        vo.setBoard_comment(comment);

        BoardDAO dao = new BoardDAO();
        List<BoardVO> list = dao.commentlist(comment);

        request.setAttribute("list", list);

        return "boarddetail.jsp";
    }
}
