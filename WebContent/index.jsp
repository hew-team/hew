<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="検索結果" name="PageName" />
	<jsp:param value="index" name="Path" />
</jsp:include>

	<div class="col-xs-8">
		<div class="newsbox1">
			<div id="news1">
				<a href="">
					<img src="./images/001.png" alt="slider1">
				</a>
			</div><!--/news1  -->
		</div><!-- /newsbox -->
	</div><!-- /news -->
	
	<div class="col-xs-4">
		<p class="newApp">新着アプリ</p>
		<div id="newShohin">
			<p class="col-xs-3"><img src="./images/app01.png" alt="icon"/></p>	
			<p class="col-xs-3"><img src="./images/app02.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app03.png" alt="icon"/></p>	
			<p class="col-xs-3"><img src="./images/app04.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app05.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app06.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app07.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app08.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app09.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app10.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app11.png" alt="icon"/></p>
			<p class="col-xs-3"><img src="./images/app12.png" alt="icon"/></p>
		</div>
	</div>
<div id="index" class="col-xs-12">	
	<div class="col-xs-12">
		<p class="news col-xs-1">SITE NEWS</p>
		<p class="newsSite col-xs-11"><a href="#">14/12/32 サイトメンテナンスのお知らせ</a></p>	
	</div>
	
	<div class="col-xs-12">
		<p class="title">オススメアプリ紹介</p>
		<p class="kijiTitle">
			<a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル01</a><br/>
			<a href="#">記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル記事タイトル02</a>
		</p>	
	</div>
	<div class="col-xs-12">
		<p class="col-xs-12">●●Ranking</p>
		<div id="indexRanking col-xs-12">
			<div class="col-xs-5">
				<p class="num col-xs-2">1位</p>
				<p class="rankIcon col-xs-4"><a class="rankIcon" href="#"><img src="./images/app01.png" alt="icon"/></a></p>
				<p class="shohin col-xs-6"><a href="#">●●●●●アプリ</a><br/>●●point</p>
			</div>
			<div class="col-xs-5">
				<p class="num col-xs-2">2位</p>
				<p class="rankIcon col-xs-4"><a class="rankIcon" href="#"><img src="./images/app01.png" alt="icon"/></a></p>
				<p class="shohin col-xs-6"><a href="#">●●●●●アプリ</a><br/>●●point</p>
			</div>
			<div class="col-xs-5">
				<p class="num col-xs-2">3位</p>
				<p class="rankIcon col-xs-4"><a class="rankIcon" href="#"><img src="./images/app01.png" alt="icon"/></a></p>
				<p class="shohin col-xs-6"><a href="#">●●●●●アプリ</a><br/>●●point</p>
			</div>
			<div class="col-xs-5">
				<p class="num col-xs-2">4位</p>
				<p class="rankIcon col-xs-4"><a class="rankIcon" href="#"><img src="./images/app01.png" alt="icon"/></a></p>
				<p class="shohin col-xs-6"><a href="#">●●●●●アプリ</a><br/>●●point</p>
			</div>
			
		</div>
		<p class="moreRank col-xs-12 btn btn-info"><a href="#">もっと見る</a></p>	
	</div>
</div>
<jsp:include page="footer.jsp"></jsp:include>