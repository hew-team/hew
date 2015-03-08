<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jp.ac.hal.tokyo.Beans.*, java.util.*;"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
	ArrayList<ProductDataBean> dataArray = (ArrayList<ProductDataBean>)request.getAttribute("ret");
%>
<jsp:include page="header.jsp">
	<jsp:param value="管理者TOP" name="PageName" />
</jsp:include>

	<div id="wrapper" class="container">
		<h1>承認待ちアプリ一覧</h1>
		<table class="table table-striped table-borderd">
		<thead>
			<tr>
				<th>商品名</th>
				<th>製作者</th>
				<th>製作者ユーザID</th>
				<th>カテゴリ</th>
				<th>商品説明</th>
				<th>価格</th>
				<th>ファイル名</th>
				<th>ファイルサイズ</th>
				<th>アイコン</th>
			</tr>
		</thead>
		<tbody>
<%
		for(int i=0; i<dataArray.size(); i++){
			out.println("<tr>");
			out.println("<td>" + dataArray.get(i).getProductName() + "</td>");
			out.println("<td>" + dataArray.get(i).getAuthor() + "</td>");
			out.println("<td>" + dataArray.get(i).getUserId() + "</td>");
			out.println("<td>" + dataArray.get(i).getCategory() + "</td>");
			out.println("<td>" + dataArray.get(i).getProductText() + "</td>");
			out.println("<td>" + dataArray.get(i).getProductPoint() + "</td>");
			out.println("<td>" + dataArray.get(i).getProductFileName() + "</td>");
			out.println("<td>" + dataArray.get(i).getProductSize() + "</td>");
			//out.println("<td><img src=\"/upload/" + dataArray.get(i).getUserId() + "/" + dataArray.get(i).getProductIcon() + "\""</td>");
			out.println("</tr>");
		}
%>
		</tbody>
		</table>
	</div>

<jsp:include page="footer.jsp"></jsp:include>