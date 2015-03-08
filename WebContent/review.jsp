<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
	String getId = (String)session.getAttribute("userId");
%>
<jsp:include page="header.jsp">
	<jsp:param value="review" name="PageName" />
</jsp:include>

<jsp:include page="footer.jsp"></jsp:include>