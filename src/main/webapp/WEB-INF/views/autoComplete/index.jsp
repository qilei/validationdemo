<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<jsp:include page="../fragments/headTag.jsp"></jsp:include>
<body>
	<jsp:include page="../fragments/navbar.jsp" />
	<div class="container-fluid">
		<div class="row-fluid">
			<jsp:include page="../fragments/menu.jsp"></jsp:include>
			<div class="span10">
				城市： <select id="combobox" name="city">
					<option value="">Select one...</option>
					<option value="1" py="beijing" jp="bj">北京</option>
					<option value="2" py="shanghai" jp="sh">上海</option>
					<option value="3" py="shenzhen" jp="sz">深圳</option>
				</select>
			</div>
			<div class="hint">
					<ul>
						<li>支持全拼、简拼、中文；支持部分文字</li>
					</ul>
				</div>
		</div>
	</div>
	<jsp:include page="../fragments/footer.jsp" />
</body>
<script type="text/javascript">
		$().ready(function(){
			$( "#combobox" ).combobox();
		});
		
	</script>
</html>