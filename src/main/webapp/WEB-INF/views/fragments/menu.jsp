<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="addUser" value="/user/add"></c:url> 
<c:url var="winExtend" value="/win/"></c:url> 
<c:url var="autoComplete" value="/autoComplete/"></c:url>
<div class="span2">
	<ul class="nav nav-list">
		<li class="nav-header">demo</li>
		<li class="active"><a href="${addUser }">服务器&客户端验证</a></li>
		<li><a href="${autoComplete }">下拉列表输入时自动完成</a></li>
		<li><a href="${winExtend }">window.open 居中</a></li>
	</ul>
</div>