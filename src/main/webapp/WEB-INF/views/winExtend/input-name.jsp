<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<c:url var="inputName" value="/win/input-name"></c:url>
<!DOCTYPE html>
<html>
	<body>
	<jsp:include page="../fragments/headTag.jsp"></jsp:include>
	姓名：<input type="text" id="userName" name="userName"/><br/>
		<button id="btn">确认</button>
	</body>
	<script type="text/javascript">
		$("#btn").click(function(){
			//opener.winExtend.returnedValue=$("#userName").val();
			opener.winExtend.returnedValue={"userName":$("#userName").val(),"age":"28"};
			opener.winExtend.returnFunc();
		    window.close();
		    return false;
		});
	</script>
</html>