<%@ page import="ACE.ADVICERY.EZ" %>

<table>
	<thead>
	<tr>
	<g:sortableColumn property="org" title="${message(code: 'EZ.org.label', default: 'Org')}"/>

	<g:sortableColumn property="inFlt" title="${message(code: 'EZ.inFlt.label', default: 'In Flt')}"/>

	<g:sortableColumn property="eSTA" title="${message(code: 'EZ.eSTA.label', default: 'ESTA')}"/>

	<g:sortableColumn property="aCTA" title="${message(code: 'EZ.aCTA.label', default: 'ACTA')}"/>

	<g:sortableColumn property="otFlt" title="${message(code: 'EZ.otFlt.label', default: 'OtFlt')}"/>

	<g:sortableColumn property="reg" title="${message(code: 'EZ.reg.label', default: 'Reg')}"/>

	<g:sortableColumn property="dst" title="${message(code: 'EZ.dst.label', default: 'Dst')}"/>

	<g:sortableColumn property="dPTM" title="${message(code: 'EZ.dst.label', default: 'DPTM')}"/>

	<g:sortableColumn property="sTD" title="${message(code: 'EZ.dst.label', default: 'STD')}"/>

	<g:sortableColumn property="psg" title="${message(code: 'EZ.dst.label', default: 'PSG')}"/>

	<g:sortableColumn property="rtn" title="${message(code: 'EZ.dst.label', default: 'RTN')}"/>

	<g:sortableColumn property="load" title="${message(code: 'EZ.dst.label', default: 'Load')}"/>
	</tr>
	</thead>



<tbody>
	<td>
		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'org', 'error')} required">

			<g:select name="org" from="${EZInstance.constraints.org.inList}" required="" value="${EZInstance?.org}" valueMessagePrefix="EZ.org"/>

		</div></td>

	<td>	<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'inFlt', 'error')} required">

			<g:select name="inFlt" from="${EZInstance.constraints.inFlt.inList}" required="" value="${EZInstance?.inFlt}" valueMessagePrefix="EZ.inFlt"/>

		</div></td>

	<td>	<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'eSTA', 'error')} required">

			<g:textField name="eSTA" required="" value="${EZInstance?.eSTA}"/>

		</div></td>

	<td>	<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'aCTA', 'error')} required">

			<g:textField name="aCTA" required="" value="${EZInstance?.aCTA}"/>

		</div></td>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'otFlt', 'error')} required">
			<label for="otFlt">
				<g:message code="EZ.otFlt.label" default="Ot Flt" />
				<span class="required-indicator">*</span>
			</label>
			<g:select name="otFlt" from="${EZInstance.constraints.otFlt.inList}" required="" value="${EZInstance?.otFlt}" valueMessagePrefix="EZ.otFlt"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'reg', 'error')} required">
			<label for="reg">
				<g:message code="EZ.reg.label" default="Reg" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="reg" name="reg.id" from="${ACE.ADVICERY.REGISTRATION.list()}" optionKey="id" required="" value="${EZInstance?.reg?.id}" class="many-to-one"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'dst', 'error')} required">
			<label for="dst">
				<g:message code="EZ.dst.label" default="Dst" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="dst" required="" value="${EZInstance?.dst}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'dPTM', 'error')} required">
			<label for="dPTM">
				<g:message code="EZ.dPTM.label" default="D PTM" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="dPTM" required="" value="${EZInstance?.dPTM}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'sTD', 'error')} required">
			<label for="sTD">
				<g:message code="EZ.sTD.label" default="S TD" />
				<span class="required-indicator">*</span>
			</label>
			<g:select id="sTD" name="sTD.id" from="${ACE.ADVICERY.Stand.list()}" optionKey="id" required="" value="${EZInstance?.sTD?.id}" class="many-to-one"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'psg', 'error')} required">
			<label for="psg">
				<g:message code="EZ.psg.label" default="Psg" />
				<span class="required-indicator">*</span>
			</label>
			<g:field name="psg" type="number" value="${EZInstance.psg}" required=""/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'rtn', 'error')} required">
			<label for="rtn">
				<g:message code="EZ.rtn.label" default="Rtn" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="rtn" required="" value="${EZInstance?.rtn}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'load', 'error')} required">
			<label for="load">
				<g:message code="EZ.load.label" default="Load" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="load" required="" value="${EZInstance?.load}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'gse', 'error')} required">
			<label for="gse">
				<g:message code="EZ.gse.label" default="Gse" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="gse" required="" value="${EZInstance?.gse}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'bch', 'error')} required">
			<label for="bch">
				<g:message code="EZ.bch.label" default="Bch" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="bch" required="" value="${EZInstance?.bch}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'agt', 'error')} required">
			<label for="agt">
				<g:message code="EZ.agt.label" default="Agt" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="agt" required="" value="${EZInstance?.agt}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'brs', 'error')} required">
			<label for="brs">
				<g:message code="EZ.brs.label" default="Brs" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="brs" required="" value="${EZInstance?.brs}"/>

		</div>

		<div class="fieldcontain ${hasErrors(bean: EZInstance, field: 'add', 'error')} required">
			<label for="add">
				<g:message code="EZ.add.label" default="Add" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="add" required="" value="${EZInstance?.add}"/>

		</div>

</tbody>
</table>