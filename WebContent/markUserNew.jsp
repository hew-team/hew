<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="お気に入りユーザー新着" name="PageName" />
	<jsp:param value="markusernew" name="Path" />
</jsp:include>


<div id="title">
	<p>お気に入りユーザーの新着</p>
</div>

<div id="sort">
	<p class="result">全000件</p>
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

<jsp:include page="footer.jsp"></jsp:include>