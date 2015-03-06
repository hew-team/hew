<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

//UTF-8を使う。
request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="商品ページ" name="PageName"/>
</jsp:include>

<div id="shohin">
	<p class="icon"><img src="./images/sample.png" alt="icon"/></p>
	<p class="datecate">初回リリース：0000/00/00 00:00</p>
	<p class="datecate">最終更新：0000/00/00 00:00</p>
	<p class="datecate">カテゴリ名：ああああああ</p>
	<p class="user">販売元：<a href="#">あ</a></p>
	<p class="bookmark"><img src="./images/bookmark.png" alt="bookmark"/></p>
	<div id="shohinName">
		<p>商品名</p>
	</div>
	<p class="bookmark"><img src="./images/bookmark.png" alt="bookmark"/></p>
	<div id="star">
		<table>
			<tr><td class="star"><img src="./images/star.png" alt="star"/></td>
			<td class="star"><img src="./images/star.png" alt="star"/></td>
			<td class="star"><img src="./images/star.png" alt="star"/></td>
			<td class="star"><img src="./images/star01.png" alt="star"/></td>
			<td class="star"><img src="./images/star01.png" alt="star"/></td>
			<td class="total">0.00点</br>／00000人中</td></tr>
		</table>
		<form action="#" method="post"><input type="submit" value="カートに入れる" class="reset"/></form>
		<p class="price">価格：00pt</p>
	</div>

	<table class="link">
		<tr><td class="link"><a href="#" class="link">レビュー（00件）</a></td>
		<td class="link"><a href="#" class="link">内容説明</a></td>
		<td class="link"><a href="#" class="link">更新情報</a></td>
		<td class="link"><a href="#" class="link">商品情報</a></td></tr>
	</table>

	<div id="image">
		<table>
			<tr><td><img src="./images/sample001.png" alt="image"/></td>
			<td><img src="./images/sample002.png" alt="image"/></td>
			<td><img src="./images/sample003.png" alt="image"/></td>
			<td><img src="./images/sample004.png" alt="image"/></td>
			<td><img src="./images/sample005.png" alt="image"/></td></tr>
		</table>
	</div>

	<ul class="detail">
		<li class="detailTitle">内容説明</li>
		<li class="detail">商品の内容について</li>
	</ul>
	<ul class="detail">
		<li class="detailTitle">更新情報</li>
		<li class="detail">バージョンアップ情報／商品説明更新日などなど</li>
	</ul>
	<ul class="detail">
		<li class="detailTitle">商品情報</li>
		<li class="detail">
				販売元サイトURL:<a href="#" target="_blank">http://www.-------</a><br/>
				カテゴリ：ああああ<br/>
				最終アップデート：0000/00/00 00:00<br/>
				バージョン：0.0.0<br/>
				サイズ：000MB<br/>
				互換性：iOS 5.0以降。iPhone、iPad及びiPod touch対応。<br/>
		</li>
	</ul>

	<p class="detailTitle">レビュー</p>
	<p class="total">全00件</p>
	<div id="review">
		<p class="reviewDate">0000/00/00 00:00</p>
		<p class="reviewUser"><a href="#">書いたユーザ名</a></p>
		<p class="reviewTitle"><a href="#">レビュータイトル</a></p>
		<table>
			<tr><td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star01.png" alt="star"/></td>
			<td><img src="./images/star01.png" alt="star"/></td>
		</table>
		<p class="review">レビュー本文冒頭ううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう</p>
		<p class="reviewTotal">このレビューが参考になった  00人／00人中</p>
		<p class="reviewMore"><a href="#">もっと見る</a></p>
	
		<p class="reviewDate">0000/00/00 00:00</p>
		<p class="reviewUser"><a href="#">書いたユーザ名</a></p>
		<p class="reviewTitle"><a href="#">レビュータイトル</a></p>
		<table>
			<tr><td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star.png" alt="star"/></td>
			<td><img src="./images/star01.png" alt="star"/></td>
			<td><img src="./images/star01.png" alt="star"/></td>
		</table>
		<p class="review">レビュー本文冒頭ううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううううう</p>
		<p class="reviewTotal">このレビューが参考になった  00人／00人中</p>
		<p class="reviewMore"><a href="#">もっと見る</a></p>
	</div>
	<p class="More"><a href="#">他のレビューも見る</a></p>

</div>
<jsp:include page="footer.jsp"></jsp:include>
