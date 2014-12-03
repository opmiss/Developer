<%@ page import="linkbin.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'fullName', 'error')} required">
	<label for="fullName">
		<g:message code="user.fullName.label" default="Full Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullName" maxlength="100" required="" value="${userInstance?.fullName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'stories', 'error')} ">
	<label for="stories">
		<g:message code="user.stories.label" default="Stories" />
		
	</label>
	<g:select name="stories" from="${linkbin.Story.list()}" multiple="multiple" optionKey="id" size="5" value="${userInstance?.stories*.id}" class="many-to-many"/>

</div>

