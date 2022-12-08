<%@page import="db_connect.Movie1VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.Movie1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	Movie1DAO dao = new Movie1DAO();
    	ArrayList<Movie1VO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>

<br>

<h3>영화</h3>

<hr>

<h5>
	영화 전체 개수 : <%=list.size()%>개
</h5>
<br>
	
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th>ID</th>
			<th>TITLE</th>
		</tr>
	</thead>
		<%
		for (int i = 0; i < list.size(); i++) {
		%>
	<tbody>
		<tr>
			<td>
				<a href="http://localhost:8888/web01/Movie1_one.jsp?id=<%= list.get(i).getId() %>">
					<%= list.get(i).getId() %>
				</a>
			</td>
			<td>
				<a href="http://localhost:8888/web01/Movie1_one.jsp?id=<%= list.get(i).getId() %>">
					<%= list.get(i).getTitle() %>
				</a>
			</td>
		</tr>
	</tbody>
		<%
		} //for
		%>
	</tbody>
</table>
</body>
</html>