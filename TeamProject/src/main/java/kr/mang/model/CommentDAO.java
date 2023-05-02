package kr.mang.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class CommentDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static {
		try {
			String resource = "kr/mang/db/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	SqlSession session = null;

	public int comment(CommentVO vo) {
		int row = 0;
		try {
			session = sqlSessionFactory.openSession(true);

			row = session.insert("commentInput",vo); // BoardVO 객체에서 코멘트 값, user_id , board_id 삽입
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return row;
	}

	public List<CommentVO> getComment(CommentVO vo) {
		List<CommentVO> list = null;
		try {
			session = sqlSessionFactory.openSession(true);
			// 댓글 테이블에 있는 댓글 내용과 댓글 작성자 댓글 작성 시간 가져오기 
			list = session.selectList("commentList", vo);
		
			session.commit();
		} finally {
			session.close();
		}
		return list;
		
		
		
		
		
	}



}