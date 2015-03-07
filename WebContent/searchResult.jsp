<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,jp.ac.hal.tokyo.Beans.*"%>

<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="index.jsp">home</a></li>
		<li><a href="upload.jsp">upload</a></li>
		<li><a href="search.jsp">search</a></li>
	</ul>
<%

	String id = (String)session.getAttribute("userId");

	if(id == null){//転送
		
		RequestDispatcher disp = request.getRequestDispatcher("msg.jsp");
		//メッセージをリクエストに設定
		request.setAttribute("msg", "無効なアクセスです。");
		//フォワード
		disp.forward(request, response);
	}else{
		ArrayList<ProductDataBean> ret = (ArrayList<ProductDataBean>)request.getAttribute("ret");
		out.println("<table>");
		out.println("<tr>");
		out.println("<th>製作者</th>");
		out.println("<th>アプリ名</th>");
		out.println("<th>ポイント</th>");
		out.println("<th>ダウンロード</th>");
		out.println("</tr>");
		for(int i=0; i<ret.size(); i++){
			out.println("<tr>");
			out.println("<td>" + ret.get(i).getAuthor() + "</td>");
			out.println("<td>" + ret.get(i).getProductName() + "</td>");
			out.println("<td>" + ret.get(i).getProductPoint() + "</td>");
			out.println("<td>");
			out.println("<form action=\"Download\" method=\"post\">");
			out.println("<input type=\"hidden\" name=\"filename\" value=\"" + ret.get(i).getProductFileName()+ "\">");
			out.println("<input type=\"hidden\" name=\"userId\" value=\"" + ret.get(i).getUserId()+ "\">");
			out.println("<input type=\"submit\" value=\"DOWNLOAD\">");
			out.println("</form>");
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	}
	
%>
</body>
</html>