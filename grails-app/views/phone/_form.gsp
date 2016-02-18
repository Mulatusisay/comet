<%@ page import="PhoneDirectory.Phone" %>



<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'contactName', 'error')} required">
    <label for="contactName">
        <g:message code="phone.contactName.label" default="Contact Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="contactName" required="" value="${phoneInstance?.contactName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'phoneNumber', 'error')} required">
    <label for="phoneNumber">
        <g:message code="phone.phoneNumber.label" default="Phone Number"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="phoneNumber" type="number" value="${phoneInstance.phoneNumber}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'extension', 'error')} required">
    <label for="extension">
        <g:message code="phone.extension.label" default="Extension"/>
        <span class="required-indicator">*</span>
    </label>
    <g:field name="extension" type="number" value="${phoneInstance.extension}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'location', 'error')} required">
    <label for="location">
        <g:message code="phone.location.label" default="Location"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="location" required="" value="${phoneInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'status', 'error')} required">
    <label for="status">
        <g:message code="phone.status.label" default="Status"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="status" required="" value="${phoneInstance?.status}"/>

</div>

