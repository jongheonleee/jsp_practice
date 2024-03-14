<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String message = (String)request.getAttribute("message");
String userName = (String)request.getAttribute("userName");
%>
	<div id="userArea">
		<h1> "<%=userName%>"의 운세는?!</h1>
		<p>
			<%=message%>
		</p>
	</div>
</body>
</html>