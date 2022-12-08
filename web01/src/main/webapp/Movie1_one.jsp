<%@page import="db_connect.Movie1VO"%>
<%@page import="db_connect.Movie1DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    
    	Movie1DAO dao = new Movie1DAO();
    	Movie1VO bag = dao.one(id);
    	
    	
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
<%= bag %>
<table class="table">
	<thead class="thead-dark">
		<tr>
			<th>ID</th>
			<th>TITLE</th>
			<th>CONTENT</th>
			<th>POST</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<%= bag.getId() %>
			</td>
			<td>
				<%= bag.getTitle() %>
			</td>
			<td>
				<%= bag.getContent() %>
			</td>
			<td>
				<a href="<%= bag.getUrl() %>">
					<img src="img/<%= bag.getImg() %>">
				</a>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>