
<%@ page import="test2.Content" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'content.label', default: 'Content')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-content" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-content" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'content.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="content" title="${message(code: 'content.content.label', default: 'Content')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'content.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="categoryTags" title="${message(code: 'content.categoryTags.label', default: 'Category Tags')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'content.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="dateModified" title="${message(code: 'content.dateModified.label', default: 'Date Modified')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contentInstanceList}" status="i" var="contentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contentInstance.id}">${fieldValue(bean: contentInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: contentInstance, field: "content")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "createdBy")}</td>
					
						<td>${fieldValue(bean: contentInstance, field: "categoryTags")}</td>
					
						<td><g:formatDate date="${contentInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${contentInstance.dateModified}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
