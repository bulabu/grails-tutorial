
<%@ page import="grails.tutorial.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-book" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list book">
			
				<g:if test="${bookInstance?.ISBN}">
				<li class="fieldcontain">
					<span id="ISBN-label" class="property-label"><g:message code="book.ISBN.label" default="ISBN" /></span>
					
						<span class="property-value" aria-labelledby="ISBN-label"><g:fieldValue bean="${bookInstance}" field="ISBN"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author1}">
				<li class="fieldcontain">
					<span id="author1-label" class="property-label"><g:message code="book.author1.label" default="Author1" /></span>
					
						<span class="property-value" aria-labelledby="author1-label"><g:fieldValue bean="${bookInstance}" field="author1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.author2}">
				<li class="fieldcontain">
					<span id="author2-label" class="property-label"><g:message code="book.author2.label" default="Author2" /></span>
					
						<span class="property-value" aria-labelledby="author2-label"><g:fieldValue bean="${bookInstance}" field="author2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.copyrightDate}">
				<li class="fieldcontain">
					<span id="copyrightDate-label" class="property-label"><g:message code="book.copyrightDate.label" default="Copyright Date" /></span>
					
						<span class="property-value" aria-labelledby="copyrightDate-label"><g:formatDate date="${bookInstance?.copyrightDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.dateTaken}">
				<li class="fieldcontain">
					<span id="dateTaken-label" class="property-label"><g:message code="book.dateTaken.label" default="Date Taken" /></span>
					
						<span class="property-value" aria-labelledby="dateTaken-label"><g:formatDate date="${bookInstance?.dateTaken}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="book.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${bookInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="book.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bookInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publishedDate}">
				<li class="fieldcontain">
					<span id="publishedDate-label" class="property-label"><g:message code="book.publishedDate.label" default="Published Date" /></span>
					
						<span class="property-value" aria-labelledby="publishedDate-label"><g:formatDate date="${bookInstance?.publishedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.publisher}">
				<li class="fieldcontain">
					<span id="publisher-label" class="property-label"><g:message code="book.publisher.label" default="Publisher" /></span>
					
						<span class="property-value" aria-labelledby="publisher-label"><g:fieldValue bean="${bookInstance}" field="publisher"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookInstance?.readerName}">
				<li class="fieldcontain">
					<span id="readerName-label" class="property-label"><g:message code="book.readerName.label" default="Reader Name" /></span>
					
						<span class="property-value" aria-labelledby="readerName-label"><g:fieldValue bean="${bookInstance}" field="readerName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
