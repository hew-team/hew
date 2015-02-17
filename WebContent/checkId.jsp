<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jp.ac.hal.tokyo.DAO.*"%>
<%
	DAO dao = new DAO();
	if(request.getParameter("id") != null && !request.getParameter("id").equals("")){
		String getId = request.getParameter("id");
		if(dao.checkId(getId)){
			out.print(0);
		}else{
			out.print(1);
		}
	}

%>