<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<head>
<title>Validation Demo</title>
<c:url var="bootstrapCss" value="/webjars/bootstrap/2.3.0/css/bootstrap.min.css" />
<c:url var="appCss" value="/resources/css/style.css" />
<c:url var="jsBasepath" value="/resources/js"/>
<link href="${bootstrapCss }" rel="stylesheet" />
<link href="${appCss }" rel="stylesheet" />
    <spring:url value="/webjars/jquery-ui/1.9.2/css/smoothness/jquery-ui-1.9.2.custom.css" var="jQueryUiCss"/>
    <link href="${jQueryUiCss}" rel="stylesheet"></link>

    <spring:url value="/webjars/jquery/1.9.0/jquery.js" var="jQuery"/>
    <script src="${jQuery}"></script>

    <spring:url value="/webjars/jquery-ui/1.9.2/js/jquery-ui-1.9.2.custom.js" var="jQueryUi"/>
    <script src="${jQueryUi}"></script>
    
    <script src="${jsBasepath }/jquery.validate.js"></script>
    <script src="${jsBasepath }/messages_zh.js"></script>
    <script src="${jsBasepath }/validation-plugin.js"></script>
    <script src="${jsBasepath }/autocomplete-plugin.js"></script>
    <style>
	.ui-combobox {
		position: relative;
		display: inline-block;
	}
	.ui-combobox-toggle {
		position: absolute;
		top: 0;
		bottom: 0;
		margin-left: -1px;
		padding: 0;
		/* support: IE7 */
		*height: 1.7em;
		*top: 0.1em;
	}
	.ui-combobox-input {
		margin: 0;
		padding: 0.3em;
	}
	</style>
</head>