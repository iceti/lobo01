<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true" import="java.io.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<tiles:insertDefinition name="pageTemplate">

	<tiles:putAttribute name="title">	
		<spring:message code="error.system.notAvailable" htmlEscape="true" /> ,&nbsp;
		<spring:message code="error.system.contactSupport" htmlEscape="true" />
	</tiles:putAttribute>
	
	<tiles:putAttribute name="body">	
		<div>	
			<div>					
				<!-- Tool Bar -->				
				<tiles:putAttribute name="toolBarTopLeft">	
					<h2>
						<!-- UOW -->	
						<spring:message code="error.system.uowContainerId" htmlEscape="true" /> : 
						<span id="UOW_data">
							<c:choose>
								<c:when test="${empty param.UOWContainerIdData}">
							        -
							    </c:when>
							    <c:otherwise>
							        <c:out value="${param.UOWContainerIdData}" />
							    </c:otherwise>
							</c:choose>						
						</span>
					</h2>
				</tiles:putAttribute>	
				<tiles:putAttribute name="toolBarTopRight">	
					<a href="javascript:history.go(-2)"><spring:message code="link.label.goBack" htmlEscape="true" /> </a> 
				</tiles:putAttribute>
			
				
								
				<!-- Stack Trace -->		
				<pre id="stackTrace_data" style="overflow: auto;">
					<h2><spring:message code="error.system.exceptionStackTrace" htmlEscape="true" /></h2>	
					<c:choose>
					    <c:when test="${empty param.exceptionStackTraceData}">
					        No Stack Trace found.
					    </c:when>
					    <c:otherwise>
					        <c:out value="${param.exceptionStackTraceData}" />
					    </c:otherwise>
					</c:choose>						
				</pre>
		
			
			</div>
			<!-- Report Error -->
			<tiles:insertDefinition name="reportErrorComponent">
				<tiles:putAttribute name="exceptionStackTraceDOMId" value="stackTrace_data" />
				<tiles:putAttribute name="UOWDOMId" value="UOW_data" />
			</tiles:insertDefinition>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>