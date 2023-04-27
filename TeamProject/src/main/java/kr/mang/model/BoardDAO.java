package kr.mang.model;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class BoardDAO {
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

	public List<BoardVO> BoardList() {
		List<BoardVO> list = null;
	
		try {
			session = sqlSessionFactory.openSession(true);
			list = session.selectList("selectList");
			
			
		} finally {
			session.close();
 		}

		return list;
	}

	public BoardVO BoardDetail(int board_id) {
		BoardVO detail = null;
		try {
			session = sqlSessionFactory.openSession(true);
			detail = session.selectOne("detail", board_id);
			session.commit();
		} finally {
			session.close();
		}
		System.out.println();
		return detail;

	}

	
	// 커뮤니티 글 등록페이지
		public void BoardInput(BoardVO vo) {
			SqlSession session = null;
			try {
				System.out.println("커뮤니티 글 등록 시작");
		        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
				session = sqlSessionFactory.openSession();
				System.out.println("session: " + session);
				session.insert("boardinput", vo);
				session.commit();
				System.out.println("등록했다.");
			}catch (Exception e) {
		        System.out.println("글 db저장중 에러 발생");
		        e.printStackTrace(); 
			}finally {
				System.out.println("닫았다.");
				session.close();
			}
		}
		
		// 커뮤니티 이미지 등록페이지
			public void imgInput(BoardVO vo) {
				SqlSession session = null;
				try {
					System.out.println("커뮤니티 이미지 등록 시작");
			        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
					session = sqlSessionFactory.openSession();
					System.out.println("session: " + session);
					session.insert("b_imginput", vo);
					session.commit();
					System.out.println("등록했다.");
				}catch (Exception e) {
			        System.out.println("이미지 db저장중 에러 발생");
			        e.printStackTrace(); 
				}finally {
					System.out.println("닫았다.");
					session.close();
				}
			}
	
	
	
	
	
}
