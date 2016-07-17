<%@ page import="grails.tutorial.Book" %>



<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'ISBN', 'error')} required">
	<label for="ISBN">
		<g:message code="book.ISBN.label" default="ISBN" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ISBN" required="" value="${bookInstance?.ISBN}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author1', 'error')} required">
	<label for="author1">
		<g:message code="book.author1.label" default="Author1" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author1" required="" value="${bookInstance?.author1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author2', 'error')} required">
	<label for="author2">
		<g:message code="book.author2.label" default="Author2" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author2" required="" value="${bookInstance?.author2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'copyrightDate', 'error')} required">
	<label for="copyrightDate">
		<g:message code="book.copyrightDate.label" default="Copyright Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="copyrightDate" precision="day"  value="${bookInstance?.copyrightDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'dateTaken', 'error')} required">
	<label for="dateTaken">
		<g:message code="book.dateTaken.label" default="Date Taken" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTaken" precision="day"  value="${bookInstance?.dateTaken}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="book.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${bookInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="book.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${bookInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publishedDate', 'error')} required">
	<label for="publishedDate">
		<g:message code="book.publishedDate.label" default="Published Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="publishedDate" precision="day"  value="${bookInstance?.publishedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} required">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Publisher" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="publisher" required="" value="${bookInstance?.publisher}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'readerName', 'error')} required">
	<label for="readerName">
		<g:message code="book.readerName.label" default="Reader Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="readerName" required="" value="${bookInstance?.readerName}"/>

</div>

