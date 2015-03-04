<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>商品検索</h1>
	<form action="SearchServlet" method="post">
		<input type="text" name="text">
		<select name="cate">
			<option>カテゴリ</option>
			<option>ゲーム</option>
			<option>test</option>
		</select>
		<input type="submit" value="検索" name="submit">
	</form>
</body>
</html>