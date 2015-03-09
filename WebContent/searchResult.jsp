<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,jp.ac.hal.tokyo.Beans.*"%>
<%

	String id = (String)session.getAttribute("userId");

		
	final String REFPAGE1 = "http://localhost:8080/hew/search.jsp";
	final String REFPAGE2 = "http://localhost:8080/hew/searchServlet";

	//リファラーチェック
	String refPage = request.getHeader("REFERER");

	//out.print(refPage);
	if(refPage==null){
		RequestDispatcher disp = request.getRequestDispatcher("msg.jsp");
		//メッセージをリクエストに設定
		request.setAttribute("msg", "無効なアクセスです。");
		//フォワード
		disp.forward(request, response);
	}else{

		if(!refPage.equals(REFPAGE1) && !refPage.equals(REFPAGE2)){
			RequestDispatcher disp = request.getRequestDispatcher("msg.jsp");
			//メッセージをリクエストに設定
			request.setAttribute("msg", "無効なアクセスです。");
			//フォワード
			disp.forward(request, response);
		}
	}

	ArrayList<ProductDataBean> ret = (ArrayList<ProductDataBean>)request.getAttribute("ret");
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="検索結果" name="PageName" />
	<jsp:param value="search" name="Path" />
</jsp:include>

<div id="search">
	<table>
		<tr><td class="left">キーワード</td><td class="right">あああああ</td>
		    <td class="left">販売時期</td><td class="right">0000年00月00日～0000年00月00日</td></tr>
		<tr><td class="left">ユーザ名</td><td class="right">あああああ</td>
		    <td class="left">価格</td><td class="right">00pt～00pt</td></tr>
		<tr><td class="left">カテゴリ</td><td class="right">ああああ</td>
		    <td class="left">評価</td><td class="right">★★★☆☆以上</td></tr>
	</table>
</div>

<div id="sort">
	<p class="result">全000件</p>
	<form action="#" method="post">
		<select name="sort">
			<option value="名前順" selected="selected">名前順</option>
			<option value="ダウンロード数順">ダウンロードが多い順</option>
			<option value="評価順">評価が高い順</option>
			<option value="投稿日時順">投稿日時が早い順</option>
		</select>
		<input type="submit" value="並べ替える" />
	</form>
</div>

<p class="pagenumber"><a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a href="#">>></a></p>

<div id="searchResult">
	<ul class="link">

<%

int userLength = 15;

for(int i = 0 ; i < ret.size(); i++){
	ProductDataBean pdb = ret.get(i);
%>
<li class="clearfix">
	<span class="img">
		<img src="<%= "upload/" + pdb.getUserId() + "/" + pdb.getProductIcon() %>" width="60" height="60" alt="" />
	</span>
	<span class="txt"><%=pdb.getProductName() %><font><%=pdb.getProductText() %></font><font class="star">★★★</font></span>
	<a href="#">
		<img src="images/icon-download-alt.png" width="20" alt="" />
	</a>
</li>
<%
}
%>
</ul>
</div>

<p class="pagenumber"><a href="#"><<</a> 1 <a href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a> <a href="#">10</a> <a href="#">>></a></p>

<div id="searchRe">
	<p class="title">再検索</p>
	<form action="SearchServlet" method="post">
	<table>
		<tr><td class="left">キーワード：</td><td class="rightL"><input type="text" name="keyword" maxlength="30" style="width:300px;"/></td>
		    <td class="left">販売時期：</td>
		    <td class="rightR">
			<select name="year00">
				<option value="2014">2014</option>
				<option value="2015" selected="selected">2015</option>
				<option value="2016">2016</option>
			</select>年
			<select name="month00">
				<option value="01">01</option>
				<option value="02" selected="selected">02</option>
				<option value="03">03</option>
			</select>月
			<select name="day00">
				<option value="01">01</option>
				<option value="02" selected="selected">02</option>
				<option value="03">03</option>
			</select>日～
			<select name="year01">
				<option value="2014">2014</option>
				<option value="2015" selected="selected">2015</option>
				<option value="2016">2016</option>
			</select>年
			<select name="month01">
				<option value="01">01</option>
				<option value="02" selected="selected">02</option>
				<option value="03">03</option>
			</select>月
			<select name="day01">
				<option value="01">01</option>
				<option value="02" selected="selected">02</option>
				<option value="03">03</option>
			</select>日</td>
		</tr>
		<tr><td class="left">ユーザ名：</td><td class="rightL"><input type="text" name="text" maxlength="30" style="width:300px;"/></td>
		    <td class="left">価格：</td>
		    <td class="rightR">
			<select name="pt00">
				<option value="00" selected="selected">00</option>
				<option value="05">05</option>
				<option value="10">10</option>
			</select>pt～
			<select name="pt01">
				<option value="00">00</option>
				<option value="05" selected="selected">05</option>
				<option value="10">10</option>
			</select>pt</td>
		</tr>
		<tr><td class="left">カテゴリ：</td>
		    <td class="rightL">
			<select name="category">
				<option value="ああああ">ああああ</option>
				<option value="あああ" selected="selected">あああ</option>
				<option value="ああ">ああ</option>
			</select></td>
		    <td class="left">評価</td>
		    <td class="rightR">
			<select name="hoshi">
				<option value="5">★★★★★</option>
				<option value="4">★★★★☆</option>
				<option value="3" selected="selected">★★★☆☆</option>
				<option value="2">★★☆☆☆</option>
				<option value="1">★☆☆☆☆</option>
			</select>以上</td>
		</tr>
		<tr><td class="left">並び順：</td>
		    <td class="rightL">
			<select name="category">
				<option value="ああああ">ブックマークが少ない順</option>
				<option value="あああ" selected="selected">ブックマークが多い順</option>
				<option value="ああ">レビューが多い順</option>
			</select></td>
		</tr>
	</table>
	<p><input type="submit" value="入力リセット" class="reset"/>
	<input type="submit" value="再検索する" class="search"/></p>
	</form>
</div>
<script>
function modal(pi){
	alert('hey'+ pi);
}	
</script>
<div id="dialog1">
	<div id="drag-area1" style="width:100%;height:80%;border:dashed 1px #333;">
		<p></p>
	</div>
	<div id="fileNameArea1"></div>
</div>

<jsp:include page="footer.jsp"></jsp:include>
