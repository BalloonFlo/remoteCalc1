<%@page import="db_connect.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    ProductDAO dao = new ProductDAO();
    ArrayList<ProductVO> list = dao.list();
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link 	rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link 	rel="stylesheet" href="css/product.css">
</head>
<body>

<hr>
<h3 align="center">상품 전체 목록</h3>
<hr>
<h5 align="center"><%= list.size() %>개의 상품이 있습니다.</h5>
<br>
<div class="container">
<table class="table">
	<thead class="thead-dark">
		<tr align="center">
			<th>상품번호</th>
			<th>상품이름</th>
			<th>상품가격</th>
			<th>상품이미지</th>
		</tr>
	</thead>
<%
for (ProductVO bag : list) {
%>
    <tbody>
      <tr align="center">
        <td>
        	<%= bag.getId() %>
        </td>
        <td>
        	<%= bag.getName() %>
        </td>
        <td>
        	<%= bag.getPrice() %>
        </td>
        <td>
        	<img src="img/<%= bag.getImg() %>">
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