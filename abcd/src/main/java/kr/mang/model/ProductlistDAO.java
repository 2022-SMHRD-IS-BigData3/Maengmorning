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
	// 중고거래 등록글  전체 리스트 가져오기
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

	// 중고거래 물품 상세페이지
	public ProductlistVO detail(int pro_id) {
		SqlSession session = null;
		ProductlistVO detail = null;
		try {
			session = sqlSessionFactory.openSession();
			detail = session.selectOne("productdetail", pro_id);
		} finally {
			session.close();
		}
		
		
		return detail;
	}
	
	// 중고거래 물품 등록페이지
	public void productInput(ProductlistVO vo) {
		SqlSession session = null;
		
		try {
			session = sqlSessionFactory.openSession();
			session.insert("productinput", vo);
			session.commit();
		} finally {
			session.close();
		}
	}
	
	
	
}
