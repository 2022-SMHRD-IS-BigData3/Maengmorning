package kr.mang.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ProductlistDAO {
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
	// 게시판 전체 리스트 가져오기
	public List<ProductlistVO> productList() {
		SqlSession session = null;
		List<ProductlistVO> list = null;
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("productlist");
		} finally {
			session.close();
		}
		return list;
	}

	
	
	
	
	
	
	
}
