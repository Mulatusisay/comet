<%@ page import="PhoneDirectory.Phone" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-phone" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-phone" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list phone">

        <g:if test="${phoneInstance?.contactName}">
            <li class="fieldcontain">
                <span id="contactName-label" class="property-label"><g:message code="phone.contactName.label"
                                                                               default="Contact Name"/></span>

                <span class="property-value" aria-labelledby="contactName-label"><g:fieldValue bean="${phoneInstance}"
                                                                                               field="contactName"/></span>

            </li>
        </g:if>

        <g:if test="${phoneInstance?.phoneNumber}">
            <li class="fieldcontain">
                <span id="phoneNumber-label" class="property-label"><g:message code="phone.phoneNumber.label"
                                                                               default="Phone Number"/></span>

                <span class="property-value" aria-labelledby="phoneNumber-label"><g:fieldValue bean="${phoneInstance}"
                                                                                               field="phoneNumber"/></span>

            </li>
        </g:if>

        <g:if test="${phoneInstance?.extension}">
            <li class="fieldcontain">
                <span id="extension-label" class="property-label"><g:message code="phone.extension.label"
                                                                             default="Extension"/></span>

                <span class="property-value" aria-labelledby="extension-label"><g:fieldValue bean="${phoneInstance}"
                                                                                             field="extension"/></span>

            </li>
        </g:if>

        <g:if test="${phoneInstance?.location}">
            <li class="fieldcontain">
                <span id="location-label" class="property-label"><g:message code="phone.location.label"
                                                                            default="Location"/></span>

                <span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${phoneInstance}"
                                                                                            field="location"/></span>

            </li>
        </g:if>

        <g:if test="${phoneInstance?.status}">
            <li class="fieldcontain">
                <span id="status-label" class="property-label"><g:message code="phone.status.label"
                                                                          default="Status"/></span>

                <span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${phoneInstance}"
                                                                                          field="status"/></span>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: phoneInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${phoneInstance}"><g:message code="default.button.edit.label"
                                                                                      default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
