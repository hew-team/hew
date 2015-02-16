<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="userData" scope="session" class="jp.ac.hal.tokyo.Beans.UserDataBean"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>
<%
	//エラーフラグ
	boolean err = false;
	try{
		//リクエストからエラーフラグを取得
		//エラーフラグを取得できない場合はNullPointerExceptionが発生
		err = (Boolean)request.getAttribute("err");
%>
		<h1>ようこそ<jsp:getProperty property="user" name="userData"/>さん。</h1>
<%
	}catch(NullPointerException e){
		out.print("<h1>不正なアクセスです。</h1>");
	}catch(Exception e){
		
	}
	
%>
	<form action="UserServlet" method="post">
		<input type="submit" name="logout" value="logout">
	</form>


</body>
</html>