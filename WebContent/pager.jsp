<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="Pager">
<%

/*
url			:	url
page		:	ページ数
ThisPage	:	現在参照中のページ
PageContent	:	ページあたりの表示件数
LastPage	:	最後のページ	

<jsp:include page="pager.jsp">
	<jsp:param value="10" name="PageContent"/>
</jsp:include>


*/

final int MAX_PAGE_NUM = 9;
final int HALF_PAGE_NUM = 4;
int ThisPage = 1;
int LastPage = 1;


if(request.getParameter("ThisPage") != null && !request.getParameter("ThisPage").isEmpty()){
	ThisPage = Integer.parseInt(request.getParameter("ThisPage"));	
}

if(request.getParameter("LastPage") != null && !request.getParameter("LastPage").isEmpty()){
	LastPage = Integer.parseInt(request.getParameter("LastPage"));	
}

if(ThisPage == 1){
	%>
			<div class="page_number">back</div>
	<%
}else{
	%>
			<div class="page_number"><a href="${param.url}?page_con=${param.PageContent}&page=<%=ThisPage - 1%>">back</a></div>
	<%	
}

if(ThisPage <= HALF_PAGE_NUM){
	for(int i = 1 ; i <= MAX_PAGE_NUM ; i++){
		if(i == ThisPage){
			%>
			<div class="page_number"><%= i %></div>
			<%
		}else{
			%>
			<div class="page_number"><a href="${param.url}?page_con=${param.PageContent}&page=<%= i %>"><%= i %></a></div>
			<%
		}
	}
}else{
	
	for(int i = ThisPage - HALF_PAGE_NUM ; i <= ThisPage + HALF_PAGE_NUM ; i++){
		if(i == ThisPage){
			%>
			<div class="page_number"><%= i %></div>
			<%
		}else if(i <= LastPage){
			%>
			<div class="page_number"><a href="${param.url}?page_con=${param.PageContent}&page=<%= i %>"><%= i %></a></div>
			<%
		}else{
			break;
		}
	}
}

if(ThisPage == LastPage){
%>
			<div class="page_number">next</div>
<%	
}else{
%>
			<div class="page_number"><a href="${param.url}?page_con=${param.PageContent}&page=<%=ThisPage + 1%>">next</a></div>
<%		
}
%>
</div>
