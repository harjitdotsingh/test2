
<%@ page import="test2.Content" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'content.label', default: 'Content')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-content" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-content" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list content">
			
				<g:if test="${contentInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="content.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${contentInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="content.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${contentInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="content.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${contentInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.categoryTags}">
				<li class="fieldcontain">
					<span id="categoryTags-label" class="property-label"><g:message code="content.categoryTags.label" default="Category Tags" /></span>
					
						<span class="property-value" aria-labelledby="categoryTags-label"><g:fieldValue bean="${contentInstance}" field="categoryTags"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="content.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${contentInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.dateModified}">
				<li class="fieldcontain">
					<span id="dateModified-label" class="property-label"><g:message code="content.dateModified.label" default="Date Modified" /></span>
					
						<span class="property-value" aria-labelledby="dateModified-label"><g:formatDate date="${contentInstance?.dateModified}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.ipAddress}">
				<li class="fieldcontain">
					<span id="ipAddress-label" class="property-label"><g:message code="content.ipAddress.label" default="Ip Address" /></span>
					
						<span class="property-value" aria-labelledby="ipAddress-label"><g:fieldValue bean="${contentInstance}" field="ipAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.keywords}">
				<li class="fieldcontain">
					<span id="keywords-label" class="property-label"><g:message code="content.keywords.label" default="Keywords" /></span>
					
						<span class="property-value" aria-labelledby="keywords-label"><g:fieldValue bean="${contentInstance}" field="keywords"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contentInstance?.locked}">
				<li class="fieldcontain">
					<span id="locked-label" class="property-label"><g:message code="content.locked.label" default="Locked" /></span>
					
						<span class="property-value" aria-labelledby="locked-label"><g:formatBoolean boolean="${contentInstance?.locked}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${contentInstance?.id}" />
					<g:link class="edit" action="edit" id="${contentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
