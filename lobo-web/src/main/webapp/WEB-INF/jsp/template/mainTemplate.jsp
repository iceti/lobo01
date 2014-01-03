<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- <link rel="shortcut icon" href="../../docs-assets/ico/favicon.png" /> -->
		
		<title>LOBO01 - <tiles:getAsString name="title" /></title>
		
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/bootstrap-theme.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/main.css" />
		<link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/css/theme.bootstrap.css" />
		
		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	    <![endif]-->		
		<tiles:insertAttribute name="header" ignore="true" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/Commons.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/AjaxCommons.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.metadata.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tablesorter.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tablesorter.widgets.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.tablesorter.pager.min.js"></script>
	</head>
	<body>
		<%@include file="navbar.jsp" %>
		<div id="main-container" class="container">
			<tiles:insertAttribute name="body"/>	
    	</div> <!-- /container -->
	</body>
</html>
