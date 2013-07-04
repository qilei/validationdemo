<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:url var="inputName" value="/win/input-name"></c:url>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp"></jsp:include>
<body>
	<jsp:include page="../fragments/navbar.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../fragments/menu.jsp"></jsp:include>
			<div class="span10">
				Welcome <span id="yourName">guest</span>!
				<button id="btn">输入姓名</button>
			</div>
			<div class="hint">
					<ul>
						<li>window.open 的扩展，支持多数浏览器的弹出窗口居中显示</li>
					</ul>
				</div>
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>
<script type="text/javascript">
		$().ready(function(){
			$("#btn").click(function(){
				winExtend.open("${inputName}",1024,768,handleReturnValue);
			});
		});
		
		function handleReturnValue(){
			$("#yourName").html(winExtend.returnedValue.userName);
		}
	</script>
</html>