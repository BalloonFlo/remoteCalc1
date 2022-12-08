<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function idCheck() {
		idTag = document.getElementById("id"); //<input name="id" value="test">
		idValue = idTag.value;
		alert('id: ' + idValue);
		alert('id length: ' + idValue.length);
		result = "";
		if (idValue.length >= 5) {
			result = "5글자 이상입니다. 유효합니다.";
		} else {
			rusult = "5글자 미만입니다. 재입력하세요.";
		};
		divTag = document.getElementById("result");
		divTag.innerHTML = result;
	};
	function pwCheck() {
		pw1Tag = document.getElementById("pw1");
		pw2Tag = document.getElementById("pw2");
		pw1Value = pw1Tag.value;
		pw2Value = pw2Tag.value;
		result = "불일치 <br> <img src=img01.jpg>";
		if (pw1Value == pw2Value) {
			rusult = "일치 <br> <img src=img02.jpg>";
		}
		resultTag = document.getElementById("result");
		resultTag.innerHTML = result;
	};
</script>
</head>
<body>
<h3>자바 스크립트 테스트</h3>
<hr>
아이디: <input name="id" id="id" value="test">
<button onclick="idCheck()" id="b1" style="color: white; background: pink; wideth: 100px; height: 20px;">글자 수 체크</button>
<br>
패스워드: <input name="pw1" id="pw1" value="test">
<br>
패스워드2: <input name="pw2" id="pw2" value="test">
<button onclick="pwCheck()" id="b2" style="color: white; background: skyblue; wideth: 100px; height: 20px;">글자 수 체크</button>
<hr>
<div id="result" style="color: white; background: fuchsia; width: 500px; height: 50px; font-size: 30px;"></div>
</body>
</html>