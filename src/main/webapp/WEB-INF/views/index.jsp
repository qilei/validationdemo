<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 

<!DOCTYPE html>
<html>
    <head>
        <title>
            xx管理系统
        </title>
        <spring:url value="/webjars/bootstrap/2.3.0/css/bootstrap.min.css" var="bootstrapCss"/>
        <spring:url value="/resources/css/style.css" var="appCss"/>
        
    
        <link rel="stylesheet" href="/validationdemo/webjars/bootstrap/2.3.0/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${appCss }" type="text/css">
    </head>
    <body>
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a class="brand">管理系统</a>
                    <p class="navbar-text pull-right">
                        <a href="#">退出</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span2">
                    <ul class="nav nav-list">
                        <li class="nav-header">库存系统
                        </li>
                        <li>
                            <a href="#">入库申请单</a>
                        </li>
                        <li>
                            <a href="#">入库申请单列表</a>
                        </li>
                        <li>
                            <a href="#">入库单</a>
                        </li>
                        <li>
                            <a href="#">入库单列表</a>
                        </li>
                        <li class="nav-header">管理用户
                        </li>
                        <li class="active">
                            <a href="#">用户</a>
                        </li>
                        <li>
                            <a href="#">角色</a>
                        </li>
                        <li>
                            <a href="#">权限</a>
                        </li>
                        <li>
                            <a href="#">登录历史</a>
                        </li>
                    </ul>
                </div>
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
        <div class="container-fluid">
            <hr>
            <footer>
                <p>
                    Company 2013
                </p>
            </footer>
        </div>
    </body>
</html>