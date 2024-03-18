<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = "";
	String isChecked = request.getParameter("remember");
	Cookie[] cookies = request.getCookies();
	
	if (isChecked == "on") {
		for (Cookie cookie : cookies) {
			String name = cookie.getName();
			if (name.equals("id")) {
				userId = cookie.getValue();
			}
		}
	} else {
		for (Cookie cookie : cookies) {
			String name = cookie.getName();
			if (name.equals("id")) {
				userId = cookie.getValue();
				isChecked = "on";
			}
		}
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}


.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.createbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #04AA6D;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Login Form</h2>

<form action="/LoginServlet2" method="post">

  <div class="container">
    <label><b>ID</b></label>
    <input type="text" placeholder="Enter ID" name="id" id="id" value="<%=userId %>" required>

    <label><b>PASSWORD</b></label>
    <input type="text" placeholder="Enter PASSWORD" name="pwd" id="pwd" required>

    <button type="submit" class="loginButton">login</button>
    <br>
    <label>
      <input id = "remember" type="checkbox" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <button type="button" class="createbtn" action="/LoginServlet2" method="post">Create</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
<script type="text/javascript">
const checkBox = document.getElementById("remember");
checkBox.checked = <%= isChecked == "on" ? true : false %>;

</script>
</body>
</html>