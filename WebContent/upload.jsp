<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>

	<form method="post" enctype="multipart/form-data" action="UploadFileServlet">
		<label>商品名：<input type="text" name="name"></label><br>
		<label>商品説明：<br>
		<textarea rows="4" cols="40" placeholder="商品説明をご記入下さい" name="description"></textarea></label><br>
		<label>購入ポイント：<input type="number" name="point"></label><br>
		<label for="select">カテゴリ：</label>
		<select id="select" name="select">
			<option>カテゴリ</option>
			<option>ゲーム</option>
			<option>ツール</option>
			<option>ニュース</option>
			<option>-----</option>
			<option>-----</option>
			<option>-----</option>
		</select>
		<br>
		<label>ファイル：<input type="file" name="filename" size="30"></label><br>
		<input type="submit" value="送信" name="upload">
	</form>
</body>
</html>