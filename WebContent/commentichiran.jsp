<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jp.ac.hal.tokyo.DAO.*"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");

	String reviewId = request.getParameter("reviewId");

	DAO d = new DAO();
	
%>
<jsp:include page="header.jsp">
	<jsp:param value="コメント一覧" name="PageName" />
	<jsp:param value="commentichiran" name="Path" />
</jsp:include>

<div id="review">

	<p class="icon">
		<a class="icon" href="#"><img src="./images/userImage.png"
			alt="icon" /></a>
	</p>

	<div id="reviewTitle">
		<p><%= reviewId %></p>
	</div>

	<div id="reviewStar">
		<div class="star"><img src="./images/star.png" alt="star" /></div>
		<div class="star"><img src="./images/star.png" alt="star" /></div>
		<div class="star"><img src="./images/star.png" alt="star" /></div>
		<div class="star"><img src="./images/star01.png" alt="star" /></div>
		<div class="star"><img src="./images/star01.png" alt="star" /></div>
	</div>

	<div id="sort">
		<p class="result">全<%= d.getCommentCount(reviewId) %>件</p>
		<p>
		<form action="#" method="post">
			<select name="sort">
				<option value="名前順" selected="selected">名前順</option>
				<option value="ダウンロード数順">ダウンロードが多い順</option>
				<option value="評価順">評価が高い順</option>
				<option value="投稿日時順">投稿日時が早い順</option>
			</select> <input type="submit" value="並べ替える" />
		</form>
		</p>
	</div>

	<p class="pagenumber">
		<a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a>
		<a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a>
		<a href="#">9</a> <a href="#">10</a> <a href="#">>></a>
	</p>




	<div id="comment">
<%

int cont = 5;

for(int i = 0;i < cont ; i++){
	%>
	
	<jsp:include page="ContentComment.jsp">
		<jsp:param value="<%= i %>" name="CommentId"/>
		<jsp:param value="aadachi" name="UserId"/>
		<jsp:param value="足立厚地" name="UserName"/>
		<jsp:param value="2015/03/09 11:00:30" name="CommentTime"/>
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

</div>
<jsp:include page="footer.jsp"></jsp:include>