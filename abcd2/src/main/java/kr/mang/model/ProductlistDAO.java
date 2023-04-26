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
			System.out.println("Starting productInput");
	        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
			System.out.println("등록하러왔다.");
			session = sqlSessionFactory.openSession();
			System.out.println("session: " + session);
			session.insert("productinput", vo);
			session.commit();
			System.out.println("등록했다.");
		}catch (Exception e) {
	        System.out.println("Error inserting ProductlistVO into database");
	        e.printStackTrace(); 
		}finally {
			System.out.println("닫았다.");
			session.close();
		}
	}
	
	
	
}
