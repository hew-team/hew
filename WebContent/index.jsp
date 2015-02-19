<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>
	<a href="signup.jsp">新規登録</a>
	<h1>login</h1>
	<form action="UserServlet" method="post">
		<input type="text" name="userId">
		<input type="password" name="passwd">
		<input type="submit" name="login">
	</form>
	<br><br>
	
	<form action="UserServlet" method="post">
		<input type="submit" name="logout" value="logout">
	</form>
</body>
</html>