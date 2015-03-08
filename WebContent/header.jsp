<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = "";
%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Maven+Pro' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="./css/common.css" />
<%
if(request.getParameter("Path") != null){
	%>
	<link rel="stylesheet" type="text/css" href="./css/<%= request.getParameter("Path") %>.css" />
	<%
	if(request.getParameter("Path").equals("index")){
		%>
	    <link rel="stylesheet" href="./css/codetabs.css">
	    <link rel="stylesheet" href="./css/code.animate.css">
	    <%
	}
}
%>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/hew/js/cude.js"></script>
	<script type="text/javascript" src="js/upload.js"></script>
	<title>${param.PageName} | Adler</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Adler</a>
      <ul class="nav navbar-nav">
          <li class="active"><a href="index.jsp">ホーム</a></li>
          <li><a href="review.jsp">アプリレビュー</a></li>
          <li><a href="ranking.jsp">ランキング</a></li>
          <li><a href="">カテゴリ</a></li>
          <li><a href="#">新作</a></li>
      </ul>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div id="navbar" class="navbar-collapse collapse">
<%
	if(session.getAttribute("userId")!=null){
		id = (String)session.getAttribute("userId");
%>
		<div class="navbar-right navbar-form">
			<div class="form-group" style="font-size:14px;color:white;">
				こんにちは、<%= id %>さん
			</div>
			<form action="UserServlet" method="post" style="display:inline;">
				<button class="btn btn-primary" name="logout">
					LogOut <span class="glyphicon glyphicon-log-out"></span>
				</button>
			</form>
		</div>
<%		
	}else{
%>
     <form action="UserServlet" method="post" class="navbar-form navbar-right">      
        <div class="form-group">
          <input type="text" name="userId" placeholder="UserID" class="form-control">
        </div>
        <div class="form-group">
          <input type="password" name="passwd" placeholder="Password" class="form-control">
        </div>
        <button name="login" type="submit" class="btn btn-success">LogIn <span class="glyphicon glyphicon-log-in"></span></button>
	 </form>
<% 
	out.println(id);
	}
%>
    </div><!--/.navbar-collapse -->
  </div>
</nav>
<div id="wrapper">