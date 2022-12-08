package db_connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.swing.JOptionPane;

public class BbsDAO {
	
	public ArrayList<BbsVO> list() {
		
		ArrayList<BbsVO> list = new ArrayList<>();
		
		//1. ����̹� ����- ����̹�(Ŀ����) �ε�
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//Ư���� ��ġ�� �ִ� ����̹� ������ ���� �о�鿩 ����
			System.out.println("1. ����̹� ���� ����.@@@@");
			
			
			//2. db���� mySQL: school, oracle: xe
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger"; 
			Connection con = DriverManager.getConnection(url, user, password); //Connection
			System.out.println("2. db���� ����.@@@@@@");
			
			//3. sql���� �����. 
			String sql = "select * from BBS"; 
			PreparedStatement ps = con.prepareStatement(sql);
			System.out.println("3. sql�� ���� ����.@@@@@");
			
			//4. sql���� db������ ������. --> ����� ��� �Ǿ����� �ڹ����α׷� �˷���.
			ResultSet rs = ps.executeQuery(); // r�� ����� table, cud�� ����(�����row��) //1 
			//rs.next() true�� ����� ����. false�� ����� ����.
			//System.out.println("4. sql�� db������ ���� ����. @@@@@ �ݿ��� row�� >>"  + rs.next());
			while (rs.next()) { //������� true�̸�!!
				System.out.println("�˻������ ����.");
				int no = rs.getInt(1); //�÷��� ���� 1�� no�� ����
				String title = rs.getString(2);
				String content = rs.getString(3);
				String writer = rs.getString(4);
				
				//UI���� ����ڰ� �˻��� ����� �� �� �־�� �Ѵ�.
				//4���� �����͸� UI���� return!!������.
				//1) ������ ����,
				BbsVO bag = new BbsVO();
				//2) �����͸� �ְ�,
				bag.setNo(no);
				bag.setTitle(title);
				bag.setContent(content);
				bag.setWriter(writer);
				
				list.add(bag);
				//3) return����.(����)
			} 
			System.out.println("box(list)�� �� ������ ���� >> " + list.size());
			//dbó���� ���õ� �޸� �Ҵ�� �� ������������.
			ps.close();
			con.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		//�޼����� ó���� �� ������, ����� �������� ����. �� ���� �����.
		return list;
	} //list

	//����ϳ��� �޼��� �ϳ� ����(�˻� 1�� ���-row 1��)
		public BbsVO one(int no) {
			//���޵� �� ����� ���޵Ǿ����� Ȯ���ϴ� ������ ����.
			System.out.println(no);
			
			//1. ����̹� ����- ����̹�(Ŀ����) �ε�
			//   db�� ����, ������ ���� �ſ� ����.
			//   �ʿ��� �� �ٿ�ε� �޾� ��� ��.
			BbsVO bag = null; //�����Ⱚ!!--> ���� �ʱ�ȭ�����־����.!
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//Ư���� ��ġ�� �ִ� ����̹� ������ ���� �о�鿩 ����
				System.out.println("1. ����̹� ���� ����.@@@@");
				
				
				//2. db���� mySQL: school, oracle: xe
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "scott";
				String password = "tiger"; 
				Connection con = DriverManager.getConnection(url, user, password); //Connection
				System.out.println("2. db���� ����.@@@@@@");
				
				//3. sql���� �����. 
				String sql = "select * from BBS where \"" + "no\"  = ?"; 
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, no); //1�� ����ǥ�� no�� �����س��� ���� ��Ʈ������ �־���!
				System.out.println("3. sql�� ���� ����.@@@@@");
				//String site = "http://www.naver.com";
				//Url url = new Url(site); //��üȭ!!
				
				//4. sql���� db������ ������. --> ����� ��� �Ǿ����� �ڹ����α׷� �˷���.
				ResultSet rs = ps.executeQuery(); // r�� ����� table, cud�� ����(�����row��) //1 
				//rs.next() true�� ����� ����. false�� ����� ����.
				//System.out.println("4. sql�� db������ ���� ����. @@@@@ �ݿ��� row�� >>"  + rs.next());
				if (rs.next()) { //������� true�̸�!!
					System.out.println("�˻������ ����.");
					int no1 = rs.getInt(1); //�÷��� ���� 1�� no�� ����
					String title = rs.getString(2);
					String content = rs.getString(3);
					String writer = rs.getString(4);
					System.out.println("�˻��� ���>>" + 
													no1 +" " + 
													title + " " + 
													content + " " +
													writer);
					
					//UI���� ����ڰ� �˻��� ����� �� �� �־�� �Ѵ�.
					//4���� �����͸� UI���� return!!������.
					//1) ������ ����,
					bag = new BbsVO();
					//2) �����͸� �ְ�,
					bag.setNo(no1);
					bag.setTitle(title);
					bag.setContent(content);
					bag.setWriter(writer);
					
					//3) return����.(����)
				}
				//dbó���� ���õ� �޸� �Ҵ�� �� ������������.
				ps.close();
				con.close();
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			} 
			//�޼����� ó���� �� ������, ����� �������� ����. �� ���� �����.
			return bag;
		} //one
		
		public void insert(BbsVO bag) { // String no
			System.out.println(bag); // toString()ȣ��, ���濡 ����ִ� ������ ����Ʈ
			// �ڹٿ��� DBMS�� �����Ϸ��� ��.
			// JDBC ���α׷��� ����
			// 4�ܰ� ����
			// 1. ����̹� ����- ����̹�(Ŀ����) �ε�
			// db�� ����, ������ ���� �ſ� ����.
			// �ʿ��� �� �ٿ�ε� �޾� ��� ��.
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// Ư���� ��ġ�� �ִ� ����̹� ������ ���� �о�鿩 ����
				System.out.println("1. ����̹� ���� ����.@@@@");

				// 2. db���� mySQL: school, oracle: xe
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "scott";
				String password = "tiger";
				Connection con = DriverManager.getConnection(url, user, password); // Connection
				System.out.println("2. db���� ����.@@@@@@");

				// 3. sql���� �����.
				String sql = "insert into Bbs values (?, ?, ?, ?)";
				// �غ�� ����(Preparedstatement)
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, bag.getNo()); // 1�� ����ǥ�� no�� �����س��� ���� ��Ʈ������ �־���!
				ps.setString(2, bag.getTitle()); // 2�� ����ǥ�� pw�� �����س��� ���� ��Ʈ������ �־���!
				ps.setString(3, bag.getContent()); // 3�� ����ǥ�� name�� �����س��� ���� ��Ʈ������ �־���!
				ps.setString(4, bag.getWriter()); // 4�� ����ǥ�� tel�� �����س��� ���� ��Ʈ������ �־���!
				System.out.println("3. sql�� ���� ����.@@@@@");
				// String site = "http://www.naver.com";
				// Url url = new Url(site); //��üȭ!!

				// 4. sql���� db������ ������. --> ����� ��� �Ǿ����� �ڹ����α׷� �˷���.
//				int result = ps.executeUpdate(); // r�� ����� table, cud�� ����(�����row��) //1
//				System.out.println("4. sql�� db������ ���� ����. @@@@@ �ݿ��� row�� >>" + result);
	//
//				ps.close();
//				con.close();
				String result2 = "����";
				try {
					int result = ps.executeUpdate(); // r�� ����� table, cud�� ����(�����row��) //1
					System.out.println("4. sql�� db������ ���� ����. @@@@@ �ݿ��� row�� >>" + result);
					result2 = "����";
					if (result == 1) {
						result2 = "����";
					}
				} catch (Exception e) {
					System.out.println("ȸ�����Խ� �����߻�");
				}
				JOptionPane.showMessageDialog(null, result2); //������ ����
				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} // insert
		
		public void delete(int no) {
			// �ڹٿ��� DBMS�� �����Ϸ��� ��.
			// JDBC ���α׷��� ����
			// 4�ܰ� ����
			// 1. ����̹� ����- ����̹�(Ŀ����) �ε�
			// db�� ����, ������ ���� �ſ� ����.
			// �ʿ��� �� �ٿ�ε� �޾� ��� ��.
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				// Ư���� ��ġ�� �ִ� ����̹� ������ ���� �о�鿩 ����
				System.out.println("1. ����̹� ���� ����.@@@@");

				// 2. db���� mySQL: school, oracle: xe
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user = "scott";
				String password = "tiger";
				Connection con = DriverManager.getConnection(url, user, password); // Connection
				System.out.println("2. db���� ����.@@@@@@");

				// 3. sql���� �����.
				String sql = "delete from bbs where no = ?";
				// �غ�� ����(Preparedstatement)
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, no); // 1�� ����ǥ�� id�� �����س��� ���� ��Ʈ������ �־���!
				System.out.println("3. sql�� ���� ����.@@@@@");
				// String site = "http://www.naver.com";
				// Url url = new Url(site); //��üȭ!!

				// 4. sql���� db������ ������. --> ����� ��� �Ǿ����� �ڹ����α׷� �˷���.
				int result = ps.executeUpdate(); // r�� ����� table, cud�� ����(�����row��) //1
				System.out.println("4. sql�� db������ ���� ����. @@@@@ �ݿ��� row�� >>" + result);

				ps.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		} // delete
		
} //class
