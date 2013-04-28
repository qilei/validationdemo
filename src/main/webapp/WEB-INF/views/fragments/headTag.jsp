<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<title>Validation Demo</title>
<c:url var="bootstrapCss" value="/webjars/bootstrap/2.3.0/css/bootstrap.min.css" />
<c:url var="appCss" value="/resources/css/style.css" />
<c:url var="jsBasepath" value="/resources/js"/>
<link href="${bootstrapCss }" rel="stylesheet" />
<link href="${appCss }" rel="stylesheet" />

    <spring:url value="/webjars/jquery/1.9.0/jquery.js" var="jQuery"/>
    <script src="${jQuery}"></script>

    <spring:url value="/webjars/jquery-ui/1.9.2/js/jquery-ui-1.9.2.custom.js" var="jQueryUi"/>
    <script src="${jQueryUi}"></script>

    <spring:url value="/webjars/jquery-ui/1.9.2/css/smoothness/jquery-ui-1.9.2.custom.css" var="jQueryUiCss"/>
    <link href="${jQueryUiCss}" rel="stylesheet"></link>
    
    <script src="${jsBasepath }/jquery.validate.js"></script>
    <script src="${jsBasepath }/messages_zh.js"></script>
    <script src="${jsBasepath }/validation-plugin.js"></script>
</head>