package kr.mang.model;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class ImgUploadDAO {
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
	
		// 중고거래 이미지 등록페이지
		public void imgInput(ImgUploadVO vo) {
			SqlSession session = null;
			try {
				System.out.println("이미지등록시작");
		        System.out.println("sqlSessionFactory: " + sqlSessionFactory);
				System.out.println("등록하러왔다.");
				session = sqlSessionFactory.openSession();
				System.out.println("session: " + session);
				session.insert("imginput", vo);
				session.commit();
				System.out.println("등록했다.");
			}catch (Exception e) {
		        System.out.println("이미지 저장 중 에러 발생");
		        e.printStackTrace(); 
			}finally {
				System.out.println("닫았다.");
				session.close();
			}
		}
		








}


