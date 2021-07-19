package Kbay.dao;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import Kbay.model.Product;

public class ProductDao {
	// singleton
	private static ProductDao instance = new ProductDao();
	private ProductDao() { }
	public static ProductDao getInstance() {
		return instance;
	}
	
	//Session 생성 DB 연결
	private static SqlSession session;
	static {
		try {
			Reader reader = Resources.getResourceAsReader("configuration.xml");
			SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);
			session = ssf.openSession(true);
			reader.close();
		} catch (Exception e) {
			System.out.println("Product Session 생성 : " + e.getMessage());
		}
	}
	
	// New Item 목록
	public List<Product> newItem(int startNum, int endNum) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("startNum", startNum);
		hm.put("endNum", endNum);
		System.out.println("ProductDao List startNum : " + startNum);
		System.out.println("ProductDao List endNum : " + endNum);
		return session.selectList("productns.newItem", hm);
	}
	
	// New Item 총 개수
	public int newItemTotal(int startNum, int endNum) {
		HashMap<String, Object> hm = new HashMap<>();
		hm.put("startNum", startNum);
		hm.put("endNum", endNum);
		System.out.println("ProductDao total startNum : " + startNum);
		System.out.println("ProductDao total endNum : " + endNum);
		return (int) session.selectOne("productns.newItemTotal", hm);
	}
}
