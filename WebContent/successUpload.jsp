<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="successUpload" name="PageName" />
</jsp:include>

<h1>アップロードが完了しました。</h1>

<jsp:include page="footer.jsp"></jsp:include>