<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>msg</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
	</ul>
	<%
		//エラーフラグ
		boolean err = false;
		//メッセージ
		String msg = "";
	
		try{
			//err = (Boolean)request.getAttribute("err");
			msg = (String)request.getAttribute("msg");
			
			out.print("<h1>" + msg + "</h1>");
		}catch(NullPointerException e){
			out.print("<h1>不正なアクセスです。</h1>");
		}catch(Exception e){
			
		}
	%>
	
	<a href="index.jsp">home</a>


</body>
</html>