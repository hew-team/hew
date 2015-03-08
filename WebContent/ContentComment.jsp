<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<p class="commentDate">0000/00/00 00:00</p>
<p class="commentUser">
	<a class="userIcon" href="#"><img class="userIcon"
		src="./images/userImage.png" alt="icon" /></a><a href="#">書いたユーザ名</a>
</p>
<p class="comment">コメント本文冒頭</p>
<p class="">
	<form class="irai" action="#" method="post">
		<input type="submit" value="このコメントに対する削除依頼" />
	</form>
</p>

<div class="col-xs-12 visit-xs kazu-twit" data-postId="${param.postId}">

	<div>
		<div class="col-xs-3 xs-img">
			<img alt="icon" src="pic/noimage.png" class="img-responsive xs-img-img">
			<div class="xs-rank text-center"><span class=""></span></div>
		</div>
		
		<div class="col-xs-9">
			<div>${param.name} <span class="usrId">@${param.id}</span><br><span class="time">${param.postTime}</span></div>
			<div class="container">
				<div class="label testbg2">${param.rank}<span class="glyphicon glyphicon-user"></span></div>
			</div>
		</div>
	</div>

	<div class="xs-container">
		<div class="col-xs-10 col-xs-offset-1 xs-post"></div>
	</div>
	
	<div class="col-xs-12 btn-group">
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-heart"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-cutlery"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-map-marker"></span></div>
		<div class="btn col-xs-3"><span class="glyphicon glyphicon-comment"></span></div>
	</div>

</div>