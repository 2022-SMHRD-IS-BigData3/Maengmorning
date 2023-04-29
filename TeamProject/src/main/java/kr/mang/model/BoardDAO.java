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
	// 커뮤니티 리스트
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

	// 커뮤니티 상세페이지
	public BoardVO BoardDetail(int board_id) {
		BoardVO detail = null;
		System.out.println("커뮤상세페이지 가려고 데이터 가지러옴");
		try {
			session = sqlSessionFactory.openSession(true);
			detail = session.selectOne("detail", board_id);
			System.out.println("데이터 있냐?"+board_id);
			session.commit();
		} finally {
			System.out.println("데이터 가지고 간다 ㅅㄱ");
			session.close();
		}
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
		} catch (Exception e) {
			System.out.println("글 db저장중 에러 발생");
			e.printStackTrace();
		} finally {
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
		} catch (Exception e) {
			System.out.println("이미지 db저장중 에러 발생");
			e.printStackTrace();
		} finally {
			System.out.println("닫았다.");
			session.close();
		}
	}

	// 댓글 등록
	public List<BoardVO> comment(BoardVO board) {
		List<BoardVO> comments = null;
		try {
			System.out.println("댓글등록");
			System.out.println("sqlSessionFactory: " + sqlSessionFactory);
			session = sqlSessionFactory.openSession(true);
			System.out.println("세션: " + session);

			session.insert("board_comment", board.getBoard_comment()); // BoardVO 객체에서 코멘트 값 삽입
			System.out.println("등록");

			comments = session.selectList("get_comments");
			System.out.println("모든 댓글 조회 결과:" + comments.get(0).getBoard_comment());

		} catch (Exception e) {
			System.out.println("에러");
			e.printStackTrace();
		} finally {
			System.out.println("닫기");
			session.close();
		}
		return comments;
	}

}
