<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="カテゴリ検索結果" name="PageName" />
	<jsp:param value="markusernew" name="Path" />
</jsp:include>
		<div id="title">
			<p>カテゴリ：ああああ</p>
		</div>
		<div id="sort">
			<p class="result">全000件</p>
			<p>
			<form action="#" method="post">
				<select name="sort">
					<option value="名前順" selected="selected">名前順</option>
					<option value="ダウンロード数順">ダウンロードが多い順</option>
					<option value="評価順">評価が高い順</option>
					<option value="投稿日時順">投稿日時が早い順</option>
				</select> <input type="submit" value="並べ替える" />
			</form>
			</p>
		</div>

		<p class="pagenumber">
			<a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
			<a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a>
			<a href="#">9</a> <a href="#">10</a> <a href="#">>></a>
		</p>

		<div id="searchResult">
		<%
		int userLength = 15;
		for(int i = 0 ; i < userLength; i++){
		%>
			<jsp:include page="ContentApp.jsp">
				<jsp:param value="2015/03/06 22:10" name="AppDate" />
				<jsp:param value="http://www.google.co.jp" name="url" />
				<jsp:param value="sample.png" name="icon" />
				<jsp:param value="Line" name="AppName" />
				<jsp:param value="作者名" name="Author" />
				<jsp:param value="100" name="Point" />
			</jsp:include>	
		<%
		}
		%>
		</div>

		<p class="pagenumber">
			<a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
			<a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a>
			<a href="#">9</a> <a href="#">10</a> <a href="#">>></a>
		</p>


	</div>
</body>
</html>
