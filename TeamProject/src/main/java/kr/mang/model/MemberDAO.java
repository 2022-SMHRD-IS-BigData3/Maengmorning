package kr.mang.model;

import java.io.InputStream;
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
	
	SqlSession session= null;
	public int join(MemberVO vo) {
		int row =0;
		try {
			session = sqlSessionFactory.openSession(true);
			row  = session.insert("join", vo);
			
		} finally {
			session.close();
		}
		return row ;
	}
	
	
	public MemberVO login(MemberVO vo) {
		SqlSession session = null;
		MemberVO result = null; 
		System.out.println("dao vo �� >>"+vo);
		try {
				session = sqlSessionFactory.openSession();
				result = session.selectOne("login",vo);
				
				System.out.println("DAO닉네임 >> " + result.getNickName());
				session.commit();
		} finally {
			session.close();
		}
		
		
		
		return result;
	}


	public List<MemberVO> getArea() {
		List<MemberVO> area = null;
		try {
			session = sqlSessionFactory.openSession(true);
			area = session.selectList("get");
		
	} finally {
		session.close();
	}
	
		
		return area;
		
	}

public MemberVO BoardDetail(int board_id) {
		
		MemberVO mdetail = null;
	
		try {
			session = sqlSessionFactory.openSession(true);
			 mdetail = session.selectOne("getuser",board_id);
			
	} finally {
		session.close();
	}
				
		return mdetail;
	}


public MemberVO areaDetail(int items_id) {
	
	MemberVO prodetail = null;
	System.out.println("여기왔어!");
	try {
		session = sqlSessionFactory.openSession(true);
		prodetail = session.selectOne("itemget",items_id);
		System.out.println("값들어왔냐?"+prodetail);
	} finally {
		System.out.println("나간다 ㅅㄱ");
		session.close();
	}
	
	return prodetail;
}

	


	
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
