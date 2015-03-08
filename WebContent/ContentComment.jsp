<%@page import="jp.ac.hal.tokyo.DAO.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String[] tag = new String[5];

String img = "SNS情報";
String post = "";
String UserId = "U000001";
String mukouButton = "disabled=\"disabled\"";

if(request.getParameter("lat") != null && request.getParameter("lng") != null && !request.getParameter("lat").equals("0.0")){
	mukouButton = "";
}

if(request.getParameter("CommentCon") != null && !request.getParameter("CommentCon").isEmpty()){
	post = request.getParameter("CommentCon");
	String str = "";
	if(post.length() > 4){
		str = post.substring(0, 3);
	}
	
    if (str.equals("re:")) {
    	try{
    		DAO d = new DAO();
        	UserId = post.substring(3, 10);
        	StringBuilder sb = new StringBuilder(post);
        	sb.delete(0, 10);
        	post ="<span class=\"label label-info\" >@"+d.selectReturnUser(UserId)+"<span class=\"glyphicon glyphicon-chevron-right\"></span></span> " + sb.toString();

    	}catch(Exception e){
    		e.printStackTrace();
    	}
    }
}
%>
<div class="col-xs-12 visit-xs kazu-twit" data-postId="${param.CommentId}">
	<div class="">
		<div class="col-xs-3 xs-img">
			<img alt="icon" src="images/userImage.png" class="img-responsive">
			<div class="xs-rank text-center"><span class=""></span></div>
		</div>
		
		<div class="col-xs-9">
			<div>${param.UserName} <span class="usrId">@${param.UserId}</span><br><span class="time">${param.CommentTime}</span></div>
			<div class="container">
				<div class="label label-info"><span class="glyphicon glyphicon-user"></span>管理者</div>
			</div>
		</div>
	</div>
	
	<div class="xs-container">
		<div class="col-xs-10 col-xs-offset-1 xs-post"><%= post %></div>
	</div>
	
	<div class="col-xs-12 btn-group">
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-heart"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-cutlery"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-map-marker"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-comment"></span></div>
	</div>

</div>