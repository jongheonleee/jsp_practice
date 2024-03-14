<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Dice</h1>
	<!-- 다이스 보여주는 영역 -->
	<div id="diceArea">
		<%
			String fileName = (String)request.getAttribute("fileName");
			if (fileName != null) {
		%>
		<img src="img/<%=fileName%>">
		<%} %>
	</div>
</body>
</html>