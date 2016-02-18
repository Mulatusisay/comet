
<%@ page import="ACE.ADVICERY.EZ" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'EZ.label', default: 'EZ')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-EZ" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-EZ" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="org" title="${message(code: 'EZ.org.label', default: 'Org')}" />
					
						<g:sortableColumn property="inFlt" title="${message(code: 'EZ.inFlt.label', default: 'In Flt')}" />
					
						<g:sortableColumn property="eSTA" title="${message(code: 'EZ.eSTA.label', default: 'E STA')}" />
					
						<g:sortableColumn property="aCTA" title="${message(code: 'EZ.aCTA.label', default: 'A CTA')}" />
					
						<g:sortableColumn property="otFlt" title="${message(code: 'EZ.otFlt.label', default: 'Ot Flt')}" />
					
						<th><g:message code="EZ.reg.label" default="Reg" /></th>
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
				<g:each in="${EZInstanceList}" status="i" var="EZInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${EZInstance.id}">${fieldValue(bean: EZInstance, field: "org")}</g:link></td>
					
						<td>${fieldValue(bean: EZInstance, field: "inFlt")}</td>
					
						<td>${fieldValue(bean: EZInstance, field: "eSTA")}</td>
					
						<td>${fieldValue(bean: EZInstance, field: "aCTA")}</td>
					
						<td>${fieldValue(bean: EZInstance, field: "otFlt")}</td>

						<td>${fieldValue(bean: EZInstance, field: "reg")}</td>

						<td>${fieldValue(bean: EZInstance, field: "dst")}</td>

						<td>${fieldValue(bean: EZInstance, field: "dPTM")}</td>

						<td>${fieldValue(bean: EZInstance, field: "sTD")}</td>

						<td>${fieldValue(bean: EZInstance, field: "psg")}</td>

						<td>${fieldValue(bean: EZInstance, field: "rtn")}</td>

						<td>${fieldValue(bean: EZInstance, field: "load")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${EZInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
