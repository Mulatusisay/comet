<%@ page import="PhoneDirectory.Phone" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main2">
    <g:set var="entityName" value="${message(code: 'phone.label', default: 'Phone')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-phone" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-phone" class="content scaffold-list" role="main2">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="contactName"
                              title="${message(code: 'phone.contactName.label', default: 'Contact Name')}"/>

            <g:sortableColumn property="phoneNumber"
                              title="${message(code: 'phone.phoneNumber.label', default: 'Phone Number')}"/>

            <g:sortableColumn property="extension"
                              title="${message(code: 'phone.extension.label', default: 'Extension')}"/>

            <g:sortableColumn property="location"
                              title="${message(code: 'phone.location.label', default: 'Location')}"/>

            <g:sortableColumn property="status" title="${message(code: 'phone.status.label', default: 'Status')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${phoneInstanceList}" status="i" var="phoneInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${phoneInstance.id}">${fieldValue(bean: phoneInstance, field: "contactName")}</g:link></td>

                <td>${fieldValue(bean: phoneInstance, field: "phoneNumber")}</td>

                <td>${fieldValue(bean: phoneInstance, field: "extension")}</td>

                <td>${fieldValue(bean: phoneInstance, field: "location")}</td>

                <td>${fieldValue(bean: phoneInstance, field: "status")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${phoneInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
