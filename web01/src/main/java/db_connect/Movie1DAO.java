package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.cj.xdevapi.PreparableStatement;

public class Movie1DAO {
	
	public ArrayList<Movie1VO> list() {
		
		ArrayList<Movie1VO> list = new ArrayList<>();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. 드라이버 설정 성공");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			System.out.println("2. db연결 성공");
			
			String sql = "select * from movie1";
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql문 생성 성공");
			
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				System.out.println("검색결과가 있음");
				
				String id = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String img = rs.getString(4);
				String url1 = rs.getString(5);
				
				Movie1VO bag = new Movie1VO();
				bag.setId(id);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setImg(img);
				bag.setUrl(url1);
				list.add(bag);
			}
			System.out.println("box(list)에 들어간 가방의 갯수: " + list.size());
			
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	} //list
	
	public Movie1VO one(String id) {
		
		System.out.println(id);
		
		Movie1VO bag = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("1. 드라이버 설정 성공");
			
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			System.out.println("2. db연결 성공");
			
			String sql = "select * from MOVIE1 where \"" + "ID\" = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println("3. sql문 생성 성공");
			
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				System.out.println("검색결과가 있음");
				
				String id1 = rs.getString(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String img = rs.getString(4);
				String url1 = rs.getString(5);
				System.out.println("검색결과: " + id1 + " " + title + " " + content + " " + img + " " + url1);
				
				bag = new Movie1VO();
				bag.setId(id1);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setImg(img);
				bag.setUrl(url1);
			}
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(bag);
		return bag;
		
		
	}
	
}
