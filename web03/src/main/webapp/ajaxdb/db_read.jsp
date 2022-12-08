<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//1. 보낸 데이터를 받자
//db_create.jsp?id=1&email=lstookes0@issuu.com&car=Chevrolet
/* id : id,
   email : email,
   car : car */
String id = request.getParameter("id");
String name = request.getParameter("name");
String company = request.getParameter("company");
String code = request.getParameter("code");

//2. JDBC 프로그래밍
//2-1) 드라이버 연결
//2-2) db연결(url, id, pw)
//2-3) SQL문 객체 생성
//2-4) SQL문 전송
//3. 결과를 보내자
//jsp에서 자동import : 클릭하고, ctrl + shift + m
Class.forName("oracle.jdbc.driver.OracleDriver");
// 특정한 위치에 있는 드라이버 파일을 램에 읽어들여 설정

// 4. db연결 mySQL: school, oracle: xe
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "scott";
String password = "tiger";
Connection con = DriverManager.getConnection(url, user, password); // Connection

// 5. sql문을 만든다.
String sql = "select * from health";
// 준비된 문장(Preparedstatement)
PreparedStatement ps = con.prepareStatement(sql);

// 6. sql문을 db서버에 보낸다. --> 결과가 어떻게 되었는지 자바프로그램 알려줌.
ResultSet rs = ps.executeQuery();
//String id = null, name = null, company = null, code = null;
if (rs.next()) {
	id = rs.getString(1);
	name = rs.getString(2);
	company = rs.getString(3);
	code = rs.getString(4);
}

con.close();
ps.close();
%>
<table border="1">
  <tr>
    <th>아이디</th>
    <th>이름</th>
    <th>회사</th>
    <th>코드</th>
  </tr>
  <tr>
    <td><%= id %></td>
    <td><%= name %></td>
    <td><%= company %></td>
    <td><%= code %></td>
  </tr>
</table>

