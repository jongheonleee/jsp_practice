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
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String check = request.getParameter("remember");

%>

<form action="/LogoutServlet2" method=post>

    <label><b>ID</b></label>
    <input type="text" placeholder="Enter ID" name="id" id="id" value="<%=id %>" required>

    <label><b>PASSWORD</b></label>
    <input type="text" placeholder="Enter PASSWORD" name="pwd" id="pwd" value="<%=pwd %>" required>
<button type="submit" class="logoutButton">logout</button>
</body>
<script type="text/javascript">
const checkBox = document.getElementById("remember");
checkBox.checked = <%= check %>;
</script>
</html>