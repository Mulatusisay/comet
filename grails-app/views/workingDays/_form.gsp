<%@ page import="OPS.WorkingDays" %>



<div class="fieldcontain ${hasErrors(bean: workingDaysInstance, field: 'workingDays', 'error')} required">
    <label for="workingDays">
        <g:message code="workingDays.workingDays.label" default="Working Days"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="workingDays" from="${workingDaysInstance.constraints.workingDays.inList}" required=""
              value="${workingDaysInstance?.workingDays}" valueMessagePrefix="workingDays.workingDays"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workingDaysInstance, field: 'date', 'error')} required">
    <label for="date">
        <g:message code="workingDays.date.label" default="Date"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="date" from="${1..31}" class="range" required=""
              value="${fieldValue(bean: workingDaysInstance, field: 'date')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workingDaysInstance, field: 'wrkDate', 'error')} ">
    <label for="wrkDate">
        <g:message code="workingDays.wrkDate.label" default="Wrk Date"/>

    </label>
    <g:datePicker name="wrkDate" precision="day" value="${workingDaysInstance?.wrkDate}" default="none"
                  noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: workingDaysInstance, field: 'staff', 'error')} ">
    <label for="staff">
        <g:message code="workingDays.staff.label" default="Staff"/>

    </label>
    <g:select name="staff" from="${OPS.Staff.list()}" multiple="multiple" optionKey="id" size="5"
              value="${workingDaysInstance?.staff*.id}" class="many-to-many"/>

</div>

