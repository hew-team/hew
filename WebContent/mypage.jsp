<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="マイページ" name="PageName" />
</jsp:include>

<div id="user">
	<p class="image">
		<a class="image" href="#"><img src="./images/userImage.png"
			alt="user" /></a>
	</p>
	<p class="userPoint">現在のポイント</p>
	<p class="point">
		<a class="point" href="#">175</a>
	</p>
</div>

<div id="news">
	<p class="news">NEWS</p>
	<table>
		<tr>
			<td class="news">SITE</td>
			<td class="news01"><a href="#">14/12/32 サイトメンテナンスのお知らせ</a></td>
			<td class="more01"><a href="#">>>詳細</a></td>
			<td class="more"><a href="#">>>もっと見る</a></td>
		</tr>

		<tr>
			<td class="news">UPDATE</td>
			<td class="news01"><a href="#">14/12/32 ●●●●●最新版公開</a></td>
			<td class="more01"><a href="#">>>詳細</a></td>
			<td class="more"><a href="#">>>もっと見る</a></td>
		</tr>

	</table>
</div>

<div id="search">
	<form action="#" method="post">
		<ul>
			<li class="search">アプリ詳細検索</li>
			<li class="searchName">キーワード
			<li>
			<li class="form"><input type="text" name="keyword" /></li>
			<li class="searchName">ユーザー名</li>
			<li class="form"><input type="text" name="user" /></li>
			<li class="searchName">カテゴリ</li>
			<li class="form"><select name="category">
					<option value="全て" selected="selected">全て</option>
					<option value="●●●●●">●●●●●</option>
					<option value="●●●●●">●●●●●</option>
			</select></li>
			<li class="searchName">販売時期</li>
			<li class="form"><select name="y01">
					<option value="----" selected="selected">----</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
			</select>年 <select name="m01">
					<option value="--" selected="selected">--</option>
					<option value="01">01</option>
					<option value="02">02</option>
			</select>月<br />～<br /> <select name="y02">
					<option value="----" selected="selected">----</option>
					<option value="2014">2014</option>
					<option value="2015">2015</option>
			</select>年 <select name="m02">
					<option value="--" selected="selected">--</option>
					<option value="01">01</option>
					<option value="02">02</option>
			</select>月</li>
			<li class="searchName">価格</li>
			<li class="form"><select name="p01">
					<option value="---" selected="selected">---</option>
					<option value="003">003</option>
					<option value="005">005</option>
			</select>pt～ <select name="p02">
					<option value="---" selected="selected">---</option>
					<option value="003">003</option>
					<option value="005">005</option>
			</select>pt</li>
			<li class="searchName">評価</li>
			<li class="form"><select name="star">
					<option value="5" selected="selected">★★★★★</option>
					<option value="4">★★★★☆</option>
					<option value="3">★★★☆☆</option>
					<option value="2">★★☆☆☆</option>
					<option value="1">★☆☆☆☆</option>
			</select>以上</li>
			<li class="searchName">並び順</li>
			<li class="form"><select name="sort">
					<option value="投稿日時順" selected="selected">投稿日時順</option>
					<option value="名前順">名前順</option>
					<option value="ダウンロード数順">ダウンロード数順</option>
					<option value="評価順">評価順</option>
			</select></li>
			<li class="searchName"><input type="submit" value="リセット"
				class="reset" /> <input type="submit" value="検索する" class="search" />
			</li>
		</ul>
	</form>
</div>

<div id="rank">
	<ul>
		<li class="rankName">●●Ranking</a></li>
		<li class="rank01">1位</li>
		<li class="shohinIcon"><a class="shohinIcon" href="#"><img
				src="./images/rankIcon.png" alt="1位" /></a></li>
		<li class="shohinName"><a href="#">●●●●●アプリ</a></li>
		<li class="shohinPrice">●●point</li>
		<li class="more"><a href="#">もっと見る</a></li>
		<li class="rankName">●●Ranking</a></li>
		<li class="rank01">1位</li>
		<li class="shohinIcon"><a class="shohinIcon" href="#"><img
				src="./images/rankIcon.png" alt="1位" /></a></li>
		<li class="shohinName"><a href="#">●●●●●アプリ</a></li>
		<li class="shohinPrice">●●point</li>
		<li class="more"><a href="#">もっと見る</a></li>
		<li class="rankName">●●Ranking</a></li>
		<li class="rank01">1位</li>
		<li class="shohinIcon"><a class="shohinIcon" href="#"><img
				src="./images/rankIcon.png" alt="1位" /></a></li>
		<li class="shohinName"><a href="#">●●●●●アプリ</a></li>
		<li class="shohinPrice">●●point</li>
		<li class="more"><a href="#">もっと見る</a></li>
		<li class="rankName">●●Ranking</a></li>
		<li class="rank01">1位</li>
		<li class="shohinIcon"><a class="shohinIcon" href="#"><img
				src="./images/rankIcon.png" alt="1位" /></a></li>
		<li class="shohinName"><a href="#">●●●●●アプリ</a></li>
		<li class="shohinPrice">●●point</li>
		<li class="more"><a href="#">もっと見る</a></li>
		<li class="moreRank"><a href="#">他のランキングも見る</a></li>
	</ul>
</div>

<div id="kiji">
	<p class="kiji">オススメアプリ紹介</p>
	<ul>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル01</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル02</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル03</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル04</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル05</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル06</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル07</a></li>
		<li><a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル08</a></li>
	</ul>
	<p class="more">
		<a href="#">もっと見る</a>
	</p>
</div>

<div id="new">
	<div id="newN">
		<p class="title">新着アプリ</p>
		<ul class="R">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="R">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="L">
			<li class="shohinIcon"><a class="shohinIcon" href="#"> <img
					src="./images/newIcon.png" alt="new" />
			</a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="L">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<p class="more">
			<a class="more" href="#">もっと見る</a>
		</p>
	</div>
	<div id="newU">
		<p class="title">お気に入りユーザの新着</p>
		<ul class="R">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="R">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="L">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<ul class="L">
			<li class="shohinIcon"><a class="shohinIcon" href="#"><img
					src="./images/newIcon.png" alt="new" /></a></li>
			<li class="shohinName"><a class="shohinName" href="#">●●●●アプリ</a></li>
			<li class="shohinPrice">●●point</li>
		</ul>
		<p class="more">
			<a class="more" href="#">もっと見る</a>
		</p>
	</div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
