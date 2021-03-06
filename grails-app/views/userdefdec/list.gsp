
<%@ page import="prisma.Userdefdec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'userdefdec.label', default: 'Userdefdec')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-userdefdec" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-userdefdec" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="userdefdec.decision.label" default="Decision" /></th>
					
						<th><g:message code="userdefdec.geo.label" default="Geo" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userdefdecInstanceList}" status="i" var="userdefdecInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userdefdecInstance.id}">${fieldValue(bean: userdefdecInstance, field: "decision")}</g:link></td>
					
						<td>${fieldValue(bean: userdefdecInstance, field: "geo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userdefdecInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
