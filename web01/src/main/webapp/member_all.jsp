<%@page import="db_connect.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    MemberDAO dao = new MemberDAO();
    ArrayList<MemberVO> list = dao.list();
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link 	rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>

<hr>
<h3 align="center">회원 전체 목록</h3>
<hr>
<h5 align="center"><%= list.size() %>명의 회원이 있습니다.</h5>
<br>

<div class="container">
<table class="table">
	<thead class="thead-dark">
		<tr align="center">
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
		</tr>
	</thead>
<%
for(MemberVO bag : list) {
%>
    <tbody>
      <tr align="center">
        <td>
        	<%= bag.getId() %>
        </td>
        <td>
        	<%= bag.getPw() %>
        </td>
        <td>
        	<%= bag.getName() %>
        </td>
        <td>
        	<%= bag.getTel() %>
        </td>
	</tr>
<%
	}
%>	
    </tbody>
  </table>
  </div>

</body>
</html>