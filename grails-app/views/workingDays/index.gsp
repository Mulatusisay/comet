<%@ page import="OPS.WorkingDays" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'workingDays.label', default: 'WorkingDays')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-workingDays" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-workingDays" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="workingDays"
                              title="${message(code: 'workingDays.workingDays.label', default: 'Working Days')}"/>

            <g:sortableColumn property="date" title="${message(code: 'workingDays.date.label', default: 'Date')}"/>

            <g:sortableColumn property="wrkDate"
                              title="${message(code: 'workingDays.wrkDate.label', default: 'Wrk Date')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${workingDaysInstanceList}" status="i" var="workingDaysInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${workingDaysInstance.id}">${fieldValue(bean: workingDaysInstance, field: "workingDays")}</g:link></td>

                <td>${fieldValue(bean: workingDaysInstance, field: "date")}</td>

                <td><g:formatDate date="${workingDaysInstance.wrkDate}"/></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${workingDaysInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
