<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String pwr = request.getParameter("pwr");
    String name = request.getParameter("name");
    String birthy = request.getParameter("birthy");
    String birthm = request.getParameter("birthm");
    String birthd = request.getParameter("birthd");
    String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String talk = request.getParameter("talk");
    String[] interest = request.getParameterValues("interest");
    String result = "";
    for (String s : interest) {
		result = result + s + " ";
		//result += s= " ";
	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>가입 회원 정보 조회</h3>
<hr>
<table>
	<tr>
		<td>
			항목명
		</td>
		<td>
			데이터
		</td>
	</tr>
	<tr>
		<td>
			id
		</td>
		<td>
			<%= id %>
		</td>
	</tr>
	<tr>
		<td>
			비밀번호
		</td>
		<td>
			<%= pw %>
		</td>
	</tr>
	<tr>
		<td>
			비밀번호 재확인
		</td>
		<td>
			<%= pwr %>
		</td>
	</tr>
	<tr>
		<td>
			이름
		</td>
		<td>
			<%= name %>
		</td>
	</tr>
	<tr>
		<td>
			생년월일
		</td>
		<td>
			<%= birthy %>년 / <%= birthm %> / <%= birthd %>일
		</td>
	</tr>
	<tr>
		<td>
			성별
		</td>
		<td>
			<%= gender %>
		</td>
	</tr>
	<tr>
		<td>
			본인 확인 이메일
		</td>
		<td>
			<%= email %>
		</td>
	</tr>
	<tr>
		<td>
			관심사
		</td>
		<td>
			<%= result %>
		</td>
	</tr>
	<tr>
		<td>
			하고싶은말
		</td>
		<td>
			<%= talk %>
		</td>
	</tr>
</table>
<hr>
<a href="naver.html">
	<button type="button" value="회원가입페이지">회원가입페이지로</button>
</a>

</body>
</html>