<%@ page import="test2.Content" %>



<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="content.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="title" cols="40" rows="5" maxlength="512" required="" value="${contentInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="content.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${contentInstance?.content}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="content.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="createdBy" required="" value="${contentInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'categoryTags', 'error')} ">
	<label for="categoryTags">
		<g:message code="content.categoryTags.label" default="Category Tags" />
		
	</label>
	<g:textField name="categoryTags" value="${contentInstance?.categoryTags}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'dateModified', 'error')} required">
	<label for="dateModified">
		<g:message code="content.dateModified.label" default="Date Modified" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateModified" precision="day"  value="${contentInstance?.dateModified}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'ipAddress', 'error')} ">
	<label for="ipAddress">
		<g:message code="content.ipAddress.label" default="Ip Address" />
		
	</label>
	<g:textField name="ipAddress" value="${contentInstance?.ipAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'keywords', 'error')} ">
	<label for="keywords">
		<g:message code="content.keywords.label" default="Keywords" />
		
	</label>
	<g:textField name="keywords" value="${contentInstance?.keywords}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contentInstance, field: 'locked', 'error')} ">
	<label for="locked">
		<g:message code="content.locked.label" default="Locked" />
		
	</label>
	<g:checkBox name="locked" value="${contentInstance?.locked}" />
</div>

