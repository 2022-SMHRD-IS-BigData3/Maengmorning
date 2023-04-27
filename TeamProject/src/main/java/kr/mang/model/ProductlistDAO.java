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
		System.out.println("리스트가져와야지");
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("productlist");
		} finally {
			System.out.println("리스트 가져옴");
			session.close();
		}
		return list;
	}

	// 중고거래 물품 상세페이지
	public ProductlistVO detail(int items_id) {
		SqlSession session = null;
		ProductlistVO detail = null;
		System.out.println("");
		try {
			session = sqlSessionFactory.openSession();
			detail = session.selectOne("productdetail", items_id);
		} finally {
			session.close();
		}
		return detail;
	}
	
	// 중고거래 물품 등록페이지
	public void productInput(ProductlistVO vo) {
		SqlSession session = null;
		try {
			System.out.println("중고물품 등록 시작");
	        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
			session = sqlSessionFactory.openSession();
			System.out.println("session: " + session);
			session.insert("productinput", vo);
			session.commit();
			System.out.println("등록했다.");
		}catch (Exception e) {
	        System.out.println("물품 db저장중 에러 발생");
	        e.printStackTrace(); 
		}finally {
			System.out.println("닫았다.");
			session.close();
		}
	}
	
	// 중고거래 물품 등록페이지
		public void imgInput(ProductlistVO vo) {
			SqlSession session = null;
			try {
				System.out.println("중고물품 등록 시작");
		        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
				session = sqlSessionFactory.openSession();
				System.out.println("session: " + session);
				session.insert("imginput", vo);
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
