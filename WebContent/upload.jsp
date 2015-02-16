<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method="post" enctype="multipart/form-data" action="UploadFileServlet">
		<label>商品名：<input type="text" name="name"></label><br>
		<label>商品説明：<br>
		<textarea rows="4" cols="40" placeholder="商品説明をご記入下さい" name="description"></textarea></label><br>
		<label>ファイル：<input type="file" name="filename" size="30"></label><br>
		<input type="submit" value="送信" name="upload">
	</form>
</body>
</html>