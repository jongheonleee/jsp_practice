<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

/* 	String url = request.getRequestURI(); */
	// 1. 쿠기 배열 참조
	// 2. 아이디 값 있으면 저장
	// 3. 체크 박스에 표시 되어 있는 경우
	String previous = request.getParameter("previous");
 	String id = "";
	String isChecked = request.getParameter("remember");
	// System.out.println("Form : > " + isChecked);
	Cookie[] cookies = request.getCookies();
	
	
	
	for (Cookie cookie : cookies) {
		System.out.println(cookie.getValue());
		if (cookie.getName().equals("id") && cookie.getValue().equals("asdf")) {
			id = cookie.getValue();
			isChecked = "on";
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

<form action="/LoginFilter04/<%= previous %>" method="post">
  <div class="container">
    <label><b>ID</b></label>
    <input type="text" placeholder="Enter ID" name="id" id="id" value="<%= id %>"  required>

    <label><b>PASSWORD</b></label>
    <input type="text" placeholder="Enter PASSWORD" name="pwd" id="pwd" required>

    <button type="submit" class="loginButton">login</button>
    <br>
    <label>
      <input id = "remember" type="checkbox" name="remember" cheked = <%= isChecked %>> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
<script type="text/javascript">
	const rememberBox = document.getElementById("remember");
	rememberBox.checked = <%= "on".equals(isChecked) ? true : false %>; 
</script>
</body>
</html>