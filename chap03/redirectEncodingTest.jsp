<%@ page pageEncoding="utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
	String value = "여늘";
	String encodedValue = URLEncoder.encode(value, "utf-8");
	response.sendRedirect("/chap03/index.jsp?name=" + encodedValue);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>