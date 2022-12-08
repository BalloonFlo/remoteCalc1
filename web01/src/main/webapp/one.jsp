<%@page import="db_connect.BbsDAO"%>
<%@page import="db_connect.BbsVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- 
    	1. 입력
    	2. 처리(db처리 - dao, vo)
    	3. 출력(브라우저로 출력, html)
     -->
     <%
     	String no = request.getParameter("no");
     
     	BbsDAO dao = new BbsDAO();
     	BbsVO bag = dao.one(Integer.parseInt(no)); //bag
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>검색된 결과입니다.</h3>
<hr>
번호 : <%= bag.getNo() %> <br>
제목 : <%= bag.getTitle() %> <br>
내용 : <%= bag.getContent() %> <br>
작성자 : <%= bag.getWriter() %> <br>

</body>
</html>