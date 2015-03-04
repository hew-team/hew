<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,jp.ac.hal.tokyo.Beans.*"%>
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
		for(int i=0; i<ret.size(); i++){
			out.print(ret.get(i).getAuthor() + " " + ret.get(i).getProductName() + " " + ret.get(i).getProductPoint());
			out.print("<br>");
		}
	}
	
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>