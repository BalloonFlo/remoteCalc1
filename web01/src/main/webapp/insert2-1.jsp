<%@page import="db_connect.BbsVO"%>
<%@page import="db_connect.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String no = request.getParameter("no");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String writer = request.getParameter("writer");
	
/* 	BbsVO bag = new BbsVO();
	int no2 = Integer.parseInt(no);
	bag.setNo(no2);
	bag.setTitle(title);
	bag.setContent(content);
	bag.setWriter(writer);
	
	BbsDAO dao = new BbsDAO();
	dao.insert(bag); */
	
	
	BbsDAO dao = new BbsDAO();
	int no2 = Integer.parseInt(no);
	BbsVO vo = new BbsVO();
	vo.setNo(no2);
	dao.delete(no2);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/out02.css">
</head>
<body>
<h3>홍길동님이 작성한 게시판 내용입니다</h3>
<hr style="width: 500px; height: 2px;">
아이디 >> <%= no %> <br>
제목 >> <%= title %> <br>
내용 >> <%= content %> <br>
작성자 >> <%= writer %> <br>
<hr style="width: 500px; height: 2px;">
<a href="Bbs.html">앞페이지로 가기</a>
</body>
</html>