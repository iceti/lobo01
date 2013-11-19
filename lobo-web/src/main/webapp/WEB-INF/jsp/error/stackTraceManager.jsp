<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" import="java.io.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!-- 
To get the Stack Trace data, is necessary to use the Java tags in the JSP page. However, 
the Tiles's Templates does not support this coding.

So, in order to use the pageTemplate, this page gets the Stack Trace and sends it to the "error view".
-->

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title> <spring:message code="error.system.notAvailable" htmlEscape="true" /> </title>
	
	<link type="text/css" href="css/general/common.css" rel="stylesheet" />	
	<link type="text/css" href="jquery-ui/css/start/jquery-ui-1.8.20.custom.min.css" rel="stylesheet" />
	
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="jquery-ui/js/jquery-ui-1.8.20.custom.min.js"></script>
	
	<script type="text/javascript" src="js/general-functions.js"></script>
	<!-- general-function script parameters -->
	<script type="text/javascript">
		contextPath = '${pageContext.request.contextPath}';
	</script>	
	
	
	<script type="text/javascript">
	</script>

</head>

<body>	
	<form id="stackTraceManagerForm" action="" method="post">
	
		<div id="wrapper">
			<div id="header">
				<div id="headerLeft">					
					<h1>ERROR INTERNO</h1>	
					<h2>HA OCURRIDO UN ERROR EN LA APLICACI&Oacute;N.</h2>
				</div>
			</div>	
			
			<div class="redirect" align="center">
				<br/><br/> 
				<img alt="loading" src="img/loading.gif" style="vertical-align: middle; width: 15%; height: 15%;	">
				<br/>
				<%-- 
				<span class="title">			
					<spring:message code="label.redirectingTo" htmlEscape="true" />
					<strong></strong>				
				</span>
				--%>
			</div>
		
		</div>
	
		<div id="formData" hidden="hidden">
		
			<!-- Stack Trace -->
			<pre id="tempStackTraceData">				
				<% 
				// if there is an exception
				if (exception != null) {
				// print the stack trace hidden in the HTML source code for debug
				exception.printStackTrace(new PrintWriter(out));
				}
				%>
			</pre>			
			
			<input type="hidden" id="exceptionStackTraceData" name="exceptionStackTraceData"> </input>
		</div>
	</form>

</body>
</html>