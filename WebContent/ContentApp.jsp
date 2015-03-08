<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div class="col-xs-2">
		<div class="col-xs-12"><a href="${param.url}"><img src="./images/${param.icon}" alt="icon" class="img-responsive"/></a></div>
		<div class="col-xs-12 text-center"><a href="${param.url}">${param.AppName}</a></div>
		<div class="col-xs-12 text-center"><a href="${param.url}">${param.Author}</a></div>
		<div class="col-xs-12">価格：${param.Point}pt</div>
	</div>
