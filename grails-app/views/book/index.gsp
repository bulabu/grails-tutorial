
<%@ page import="grails.tutorial.Book" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-book" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-book" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="ISBN" title="${message(code: 'book.ISBN.label', default: 'ISBN')}" />
					
						<g:sortableColumn property="author1" title="${message(code: 'book.author1.label', default: 'Author1')}" />
					
						<g:sortableColumn property="author2" title="${message(code: 'book.author2.label', default: 'Author2')}" />
					
						<g:sortableColumn property="copyrightDate" title="${message(code: 'book.copyrightDate.label', default: 'Copyright Date')}" />
					
						<g:sortableColumn property="dateTaken" title="${message(code: 'book.dateTaken.label', default: 'Date Taken')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'book.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${bookInstanceList}" status="i" var="bookInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bookInstance.id}">${fieldValue(bean: bookInstance, field: "ISBN")}</g:link></td>
					
						<td>${fieldValue(bean: bookInstance, field: "author1")}</td>
					
						<td>${fieldValue(bean: bookInstance, field: "author2")}</td>
					
						<td><g:formatDate date="${bookInstance.copyrightDate}" /></td>
					
						<td><g:formatDate date="${bookInstance.dateTaken}" /></td>
					
						<td>${fieldValue(bean: bookInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bookInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
