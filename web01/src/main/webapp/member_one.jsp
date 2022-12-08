<%@page import="db_connect.MemberVO"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String id = request.getParameter("id");
    
    	MemberDAO dao = new MemberDAO();
    	MemberVO bag = dao.one(id);
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
<br>
  <table class="table">
    <thead class="thead-dark">
      <tr>
        <th>항목명</th>
        <th>데이터 입력</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td >아이디</td>
        <td>
        	<%= bag.getId() %>
        </td>
      </tr>
      <tr>
        <td >비밀번호</td>
        <td>
        	<%= bag.getPw() %>
        </td>
      </tr>
      <tr>
        <td >이름</td>
        <td>
        	<%= bag.getName() %>
        </td>
      </tr>
      <tr>
        <td >전화번호</td>
        <td>
        	<%= bag.getTel() %>
        </td>
      </tr>
      <tr>
      	<td colspan="2" align="right">
      		<a href="member_one.html">
      			<button type="submit" class="btn btn-outline-secondary">회원 검색페이지로</button>
      		</a>
      		<a href="member.html">
				<button type="button" class="btn btn-outline-secondary">첫페이지로</button>
			</a>
      	</td>
      </tr>
    </tbody>
  </table>

</body>
</html>