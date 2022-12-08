<%@page import="db_connect.BbsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    BbsDAO dao = new BbsDAO();
    ArrayList<BbsVO> list = dao.list();
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

<h3>게시물 전체 개수 <%= list.size() %>개</h3>

<br>
  <table class="table">
    <thead class="thead-dark">
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>내용</th>
        <th>작성자</th>
      </tr>
    </thead>
<%
	for(BbsVO bag : list) {
		
%>
    <tbody>
      <tr>
        <td>
        	<%= bag.getNo() %>
        </td>
        <td>
        	<%= bag.getTitle() %>
        </td>
        <td>
        	<%= bag.getContent() %>
        </td>
        <td>
        	<%= bag.getWriter() %>
        </td>
	</tr>
<%
	}
%>

    </tbody>
  </table>
<a href="member_one.html">
	<button type="submit" class="btn btn-outline-secondary">회원 검색페이지로</button>
 </a>
<a href="member.html">
	<button type="button" class="btn btn-outline-secondary">첫페이지로</button>
</a>
</body>
</html>