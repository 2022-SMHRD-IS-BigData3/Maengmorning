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

	// 중고거래 등록글 전체 리스트 가져오기
	public List<ProductlistVO> productList() {
		SqlSession session = null;
		List<ProductlistVO> list = null;
		System.out.println("리스트가져와야지");
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("productlist");
			System.out.println(list);
		} finally {
			System.out.println("리스트 가져옴");
			session.close();
		}
		return list;
	}

	// 중고거래 등록 이미지 전체 리스트 가져오기
	public List<ProductlistVO> imgList() {
		SqlSession session = null;
		List<ProductlistVO> imglist = null;
		System.out.println("img리스트가져와야지");
		try {
			session = sqlSessionFactory.openSession();
			imglist = session.selectList("imglist");
			System.out.println(imglist);
		} finally {
			System.out.println("img리스트 가져옴");
			session.close();
		}
		return imglist;
	}

/////////////////////////////////////////////////////////////////////////////////////////
	// 중고거래 물품 상세페이지
	public ProductlistVO detail(int items_id) {
		SqlSession session = null;
		ProductlistVO detail = null;
		System.out.println("데이터가지러 들어가자");
		try {
			session = sqlSessionFactory.openSession();
			detail = session.selectOne("productdetail", items_id);
			System.out.println(detail);
			System.out.println("가져왔다.");
			session.commit();
		} finally {
			System.out.println("나왔다.");
			session.close();
		}
		return detail;
	}

/////////////////////////////////////////////////////////////////////////
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
		} catch (Exception e) {
			System.out.println("물품 db저장중 에러 발생");
			e.printStackTrace();
		} finally {
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
		} catch (Exception e) {
			System.out.println("이미지 db저장중 에러 발생");
			e.printStackTrace();
		} finally {
			System.out.println("닫았다.");
			session.close();
		}

	}

	public List<ProductlistVO> listif() {
		SqlSession session = null;
		List<ProductlistVO> list = null;
		try {
			System.out.println("조건조회 시작");
			System.out.println("sqlSessionFactory: " + sqlSessionFactory);
			session = sqlSessionFactory.openSession(true);
			System.out.println("세션: " + session);
			list = session.selectList("get_listif");
			System.out.println("조건 조회 결과: " + list.get(0).getItems_id());
		} catch (Exception e) {
			System.out.println("에러");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	// 마이페이지 조회

	public List<ProductlistVO> myList() {
		SqlSession session = null;
		List<ProductlistVO> mylist = null;
		System.out.println("my리스트가져와야지");
		try {
			session = sqlSessionFactory.openSession();
			mylist = session.selectList("getmypage");
			System.out.println("MYLIST>>" + mylist);
		} finally {
			System.out.println("my리스트 가져옴");
			session.close();
		}
		return mylist;
	}

	// 검색기능

	public List<ProductlistVO> ProductSearch(String keyword) {
		SqlSession session = null;
		List<ProductlistVO> list = null;
		System.out.println("검색하기");
		try {
			session = sqlSessionFactory.openSession();
			list = session.selectList("search", keyword);
		} catch (Exception e) {
			System.out.println("에러");
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

}
