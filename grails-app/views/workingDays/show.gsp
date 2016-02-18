<%@ page import="OPS.WorkingDays" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'workingDays.label', default: 'WorkingDays')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-workingDays" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-workingDays" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list workingDays">

        <g:if test="${workingDaysInstance?.workingDays}">
            <li class="fieldcontain">
                <span id="workingDays-label" class="property-label"><g:message code="workingDays.workingDays.label"
                                                                               default="Working Days"/></span>

                <span class="property-value" aria-labelledby="workingDays-label"><g:fieldValue
                        bean="${workingDaysInstance}" field="workingDays"/></span>

            </li>
        </g:if>

        <g:if test="${workingDaysInstance?.date}">
            <li class="fieldcontain">
                <span id="date-label" class="property-label"><g:message code="workingDays.date.label"
                                                                        default="Date"/></span>

                <span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${workingDaysInstance}"
                                                                                        field="date"/></span>

            </li>
        </g:if>

        <g:if test="${workingDaysInstance?.wrkDate}">
            <li class="fieldcontain">
                <span id="wrkDate-label" class="property-label"><g:message code="workingDays.wrkDate.label"
                                                                           default="Wrk Date"/></span>

                <span class="property-value" aria-labelledby="wrkDate-label"><g:formatDate
                        date="${workingDaysInstance?.wrkDate}"/></span>

            </li>
        </g:if>

        <g:if test="${workingDaysInstance?.staff}">
            <li class="fieldcontain">
                <span id="staff-label" class="property-label"><g:message code="workingDays.staff.label"
                                                                         default="Staff"/></span>

                <g:each in="${workingDaysInstance.staff}" var="s">
                    <span class="property-value" aria-labelledby="staff-label"><g:link controller="staff" action="show"
                                                                                       id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: workingDaysInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${workingDaysInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
