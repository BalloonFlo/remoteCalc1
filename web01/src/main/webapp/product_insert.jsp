<%@page import="db_connect.ProductVO"%>
<%@page import="db_connect.ProductDAO"%>
<!-- @ : page 지시자(tomcat WAS에게)  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    	1. 입력
    	2. 처리(db처리 - dao, vo)
    	3. 출력(브라우저로 출력, html)
     -->
     <!-- 1. 데이터를 product_insert.html에서 입력해서 넘김 값 받으면 될 것. -->
     <%
     	//스크립트릿(scriptlet --> 자바코드를 쓰는 부분)
     	//HttpServletRequest request = new HttpServletRequest(); //내장된 객체
     	//주소부분 중에서 id=110
     	String id = request.getParameter("id"); //"110"
     	String name = request.getParameter("name");
     	String content = request.getParameter("content");
     	String price = request.getParameter("price");
     	String company = request.getParameter("company");
     	String img = request.getParameter("img");
     	
     	ProductVO bag = new ProductVO();
     	bag.setId(id);
     	bag.setName(name);
     	bag.setContent(content);
     	bag.setPrice(Integer.parseInt(price));
     	bag.setCompany(company);
     	bag.setImg(img);
     	
     	ProductDAO dao = new ProductDAO();
     	dao.insert(bag);
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>게시물 등록 정보 확인</h3>
<%= bag %> <!-- 표현식(expression) -->
<hr>
id : <%= id %> <br>
name : <%= name %> <br>
content : <%= content %> <br>
price : <%= price %> <br>
company : <%= company %> <br>
img : <%= img %> <br>
<hr>
<a href="product_insert.html">
	<button type="button" class="btn btn-outline-secondary">상품등록페이지로</button>
</a>
<a href="product.html">
	<button type="button" class="btn btn-outline-secondary">첫페이지로</button>
</a>
</body>
</html>