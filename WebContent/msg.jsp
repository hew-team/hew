<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//UTF-8を使う。
	request.setCharacterEncoding("utf-8");
%>
<jsp:include page="header.jsp">
	<jsp:param value="msg" name="PageName" />
</jsp:include>
<script>
	var y = $(window).height();
	$('h1').css('height', y * 0.7 +'px').css('line-height', y * 0.7 + 'px').css('text-align', 'center');
</script>
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
	


<jsp:include page="footer.jsp"></jsp:include>