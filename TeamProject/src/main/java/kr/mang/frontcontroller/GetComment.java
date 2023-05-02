package kr.mang.frontcontroller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import kr.mang.controller.Command;
import kr.mang.model.CommentDAO;
import kr.mang.model.CommentVO;

public class GetComment implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
			int board_id =Integer.parseInt(request.getParameter("board_id"));
			
			CommentVO vo = new CommentVO();
			CommentDAO dao = new CommentDAO();
			
			vo.setBoard_id(board_id);
			
			List<CommentVO> list = dao.getComment(vo);
		
			System.out.println("댓글 갯수 >> "+list.size());
	
			PrintWriter out = response.getWriter();
	
			Gson gson = new Gson();
			
			out.print(gson.toJson(list));
		
			return "boarddetail.jsp";
	}		
			
}
