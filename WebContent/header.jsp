<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

	<link href="css/bootstrap.min.css" rel="stylesheet">

	<link href='http://fonts.googleapis.com/css?family=Maven+Pro' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" type="text/css" href="./css/common.css" />
	<link rel="stylesheet" type="text/css" href="./css/footer.css" />

	<link rel="stylesheet" type="text/css" href="./css/shohin.css" />
	<link rel="stylesheet" type="text/css" href="./css/mypage.css" />
	
<%
	if(request.getParameter("Path") != null){
		%>
		<link rel="stylesheet" type="text/css" href="./css/<%= request.getParameter("Path") %>.css" />
		<%
	}
%>

	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/themes/smoothness/jquery-ui.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/hew/js/cude.js"></script>
	<title>${param.PageName} | Adler</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="user.jsp">Adler</a>
      <ul class="nav navbar-nav">
          <li class="active"><a href="index.jsp">home</a></li>
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
	if(session.getAttribute("name")!=null){
		String name = (String)session.getAttribute("name");
%>
		<div class="navbar-right navbar-form">
			<div class="form-group" style="font-size:14px;color:white;">
				こんにちは、<%= name %>さん
			</div>
			<a class="btn btn-primary" onclick="location.href='Logout'">
				LogOut <span class="glyphicon glyphicon-log-out"></span>
			</a>
		</div>
<%		
	}else{
%>
     <form action="Login_jg" method="post" class="navbar-form navbar-right">      
        <div class="form-group">
          <input type="text" name="mailAddress" placeholder="Email" class="form-control">
        </div>
        <div class="form-group">
          <input type="password" name="password" placeholder="Password" class="form-control">
        </div>
        <button type="submit" class="btn btn-success">LogIn <span class="glyphicon glyphicon-log-in"></span></button>
	 </form>
<% 
	}
%>
    </div><!--/.navbar-collapse -->
  </div>
</nav>
<div id="wrapper">