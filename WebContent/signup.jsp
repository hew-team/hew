<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="js/check.js"></script>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>
	<h1>新規会員登録</h1>
	<div id="msg" style="color:red"></div><br>
	<form method="post" action="SignUpServlet">
		<label>ユーザ名：<input type="text" name="name"></label><div id="nameMsg"></div><br>
		性別：
		<label>男：<input type="radio" name="sex" value="1"></label>
		<label>女：<input type="radio" name="sex" value="2"></label><div id="sexMsg"></div><br>
		<label>生年月日</label>
		<select id="year" name="year">
			<option>-----</option>
			<option>1989</option>
		</select>
		<label for="year">年</label>
		<select id="month" name="month">
			<option>-----</option>
			<option>11</option>
		</select>
		<label for="month">月</label>
		<select id="day" name="day">
			<option>-----</option>
			<option>08</option>
		</select>
		<label for="day">日</label><br>
		<label>メールアドレス：<input type="text" name="mail"></label><div id="mailMsg"></div><br>
		<label>ログインID：<input type="text" name="id"></label><div id="idMsg"></div><br>
		<label>パスワード：<input type="password" name="passwd"></label><br>
		<label>パスワード(再入力)：<input type="password" name="passwdRetype"></label><div id="passMsg"></div><br>
		<div>
			利用規約・・・・・
		</div><br>
		<input type="submit" value="利用規約を確認の上登録" name="signUp">
	</form>
</body>
</html>