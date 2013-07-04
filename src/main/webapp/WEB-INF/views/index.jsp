<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<jsp:include page="fragments/headTag.jsp"></jsp:include>
    <body>
    	<jsp:include page="fragments/navbar.jsp"/>
        <div class="container-fluid">
            <div class="row-fluid">
            	<jsp:include page="fragments/menu.jsp"></jsp:include>
                <div class="span10">
                	首页
                </div>
            </div>
        </div>
        <jsp:include page="fragments/footer.jsp"/>
    </body>
</html>