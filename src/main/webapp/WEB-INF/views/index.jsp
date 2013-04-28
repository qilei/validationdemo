<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<!DOCTYPE html>
<html>
	<jsp:include page="fragments/headTag.jsp"></jsp:include>
    <body>
    	<jsp:include page="fragments/navbar.jsp"/>
        <div class="container-fluid">
            <div class="row-fluid">
            	<jsp:include page="fragments/menu.jsp"></jsp:include>
                <div class="span10">
                    <div class="pageTitle">
                        <h3>
                            用户管理：新建用户
                        </h3>
                    </div>
                    <div class="pageBlock">
                        <div class="pbHeader bottomBtns">
                            <button class="btn">保存</button> <button class="btn">保存并新建</button> <button class="btn">取消</button>
                        </div>
                        <div class="pbBody">
                            <div class="pbSubheader">
                                <span class="pbSubExtra"><span class="requiredExample">&nbsp;</span> <span class="requiredText">= 必填信息</span></span> <span>一般信息</span>
                            </div>
                            <div class="pbSubsection">
                                <table class="detailList" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="labelCol requiredInput">
                                                <label for="Name"><span class="requiredMark">*</span>用户名</label>
                                            </td>
                                            <td class="dataCol col02">
                                                <div class="requiredInput">
                                                    <div class="requiredBlock"></div>
                                                    <input id="Name" maxlength="255" name="Name" size="20" tabindex="1" type="text">
                                                </div>
                                            </td>
                                            <td class="labelCol">
                                                <label for="Family">姓名</label>
                                            </td>
                                            <td class="dataCol">
                                                <input type="text"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="labelCol">
                                                <label for="ProductCode">电子邮件</label>
                                            </td>
                                            <td class="dataCol col02">
                                                <input id="ProductCode" maxlength="255" name="ProductCode" size="20" tabindex="2" type="text">
                                            </td>
                                            <td class="labelCol last">
                                                <label for="IsActive">已启用</label>
                                            </td>
                                            <td class="dataCol last">
                                                <input id="IsActive" name="IsActive" tabindex="4" type="checkbox" value="1">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="pbSubheader">
                                <span class="pbSubExtra"><span class="requiredExample">&nbsp;</span> <span class="requiredText">= 必填信息</span></span> <span>其他信息</span>
                            </div>
                            <div class="pbSubsection">
                                <table class="detailList" border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                        <tr>
                                            <td class="labelCol requiredInput">
                                                <label for="Name"><span class="requiredMark"></span>部门</label>
                                            </td>
                                            <td class="dataCol col02">
                                                <div class="requiredInput">
                                                    <input id="Name" maxlength="255" name="Name" size="20" tabindex="1" type="text">
                                                </div>
                                            </td>
                                            <td class="labelCol">
                                                <label for="Family">电话</label>
                                            </td>
                                            <td class="dataCol">
                                                <input type="text"/>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <hr/>
                        <div class="pbFooter bottomBtns">
                            <button class="btn">保存</button> <button class="btn">保存并新建</button> <button class="btn">取消</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="fragments/footer.jsp"/>
    </body>
</html>