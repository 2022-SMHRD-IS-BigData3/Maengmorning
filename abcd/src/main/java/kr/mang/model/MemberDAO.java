package kr.mang.model;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MemberDAO {
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
	
	
	
	
//	int row = 0;
//	public int join(MemberVO vo) {
//		// 데이터 베이스 연결 ~ 추가
//		SqlSession session = null;
//		try {
//
//			 session = sqlSessionFactory.openSession(true);
//			 row =session.insert("join", vo);
//		} finally {
//			session.close();
//		}
//		return row;
//
//	}
//	public MemberVO login(MemberVO vo) {
//		SqlSession session  = null;
//		MemberVO mvo = null;
//		try {
//			session = sqlSessionFactory.openSession(true);
//			mvo = session.selectOne("login", vo);
//			
//		} finally {
//			session.close();
//		}
//		return mvo;
//		 
//	}
//	
//	public List<MemberVO> selectAll() {
//		SqlSession session  = null;
//		
//		List<MemberVO> mList = null;
//		try {
//			session = sqlSessionFactory.openSession(true);
//			mList = session.selectList("selectAll");
//		} finally {
//			session.close();
//			
//		}
//		return mList;
//
//	}


	
}
