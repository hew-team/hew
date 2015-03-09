<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
	String getId = (String)session.getAttribute("userId");
%>
<jsp:include page="header.jsp">
	<jsp:param value="マイページ" name="PageName" />
</jsp:include>

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
<jsp:include page="footer.jsp"></jsp:include>