<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<div id="review">
	<p class="icon">
		<a class="icon" href="#"><img src="./images/userImage.png"
			alt="icon" /></a>
	</p>
	<div id="reviewTitle">
		<p>レビュータイトル</p>
	</div>
	<div id="reviewStar">
		<table>
			<tr>
				<td class="star"><img src="./images/star.png" alt="star" /></td>
				<td class="star"><img src="./images/star.png" alt="star" /></td>
				<td class="star"><img src="./images/star.png" alt="star" /></td>
				<td class="star"><img src="./images/star01.png" alt="star" /></td>
				<td class="star"><img src="./images/star01.png" alt="star" /></td>
		</table>
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




	<div id="comment">
		<jsp:include page="ContentApp.jsp">
			<jsp:param value="2015/03/06 22:10" name="AppDate" />
			<jsp:param value="http://www.google.co.jp" name="url" />
			<jsp:param value="sample.png" name="icon" />
			<jsp:param value="Line" name="AppName" />
			<jsp:param value="作者名" name="Author" />
			<jsp:param value="100" name="Point" />
		</jsp:include>
		
		<p class="commentDate">0000/00/00 00:00</p>
		<p class="commentUser">
			<a class="userIcon" href="#"><img class="userIcon"
				src="./images/userImage.png" alt="icon" /></a><a href="#">書いたユーザ名</a>
		</p>
		<p class="comment">コメント本文冒頭ううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう</p>
		<p>
		<form class="irai" action="#" method="post">
			<input type="submit" value="このコメントに対する削除依頼" />
		</form>
		</p>

		<p class="commentDate">0000/00/00 00:00</p>
		<p class="commentUser">
			<a class="userIcon" href="#"><img class="userIcon"
				src="./images/userImage.png" alt="icon" /></a><a href="#">書いたユーザ名</a>
		</p>
		<p class="comment">コメント本文冒頭ううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう</p>
		<p>
		<form class="irai" action="#" method="post">
			<input type="submit" value="このコメントに対する削除依頼" />
		</form>
		</p>

		<p class="commentDate">0000/00/00 00:00</p>
		<p class="commentUser">
			<a class="userIcon" href="#"><img class="userIcon"
				src="./images/userImage.png" alt="icon" /></a><a href="#">書いたユーザ名</a>
		</p>
		<p class="comment">コメント本文冒頭ううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう</p>
		<p>
		<form class="irai" action="#" method="post">
			<input type="submit" value="このコメントに対する削除依頼" />
		</form>
		</p>
	</div>

	<p class="pagenumber">
		<a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
		<a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a>
		<a href="#">9</a> <a href="#">10</a> <a href="#">>></a>
	</p>

</div>
