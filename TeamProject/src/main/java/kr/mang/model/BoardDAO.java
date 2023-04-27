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

}
