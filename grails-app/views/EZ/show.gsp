
<%@ page import="ACE.ADVICERY.EZ" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'EZ.label', default: 'EZ')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-EZ" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-EZ" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list EZ">
			
				<g:if test="${EZInstance?.org}">
				<li class="fieldcontain">
					<span id="org-label" class="property-label"><g:message code="EZ.org.label" default="Org" /></span>
					
						<span class="property-value" aria-labelledby="org-label"><g:fieldValue bean="${EZInstance}" field="org"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.inFlt}">
				<li class="fieldcontain">
					<span id="inFlt-label" class="property-label"><g:message code="EZ.inFlt.label" default="In Flt" /></span>
					
						<span class="property-value" aria-labelledby="inFlt-label"><g:fieldValue bean="${EZInstance}" field="inFlt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.eSTA}">
				<li class="fieldcontain">
					<span id="eSTA-label" class="property-label"><g:message code="EZ.eSTA.label" default="E STA" /></span>
					
						<span class="property-value" aria-labelledby="eSTA-label"><g:fieldValue bean="${EZInstance}" field="eSTA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.aCTA}">
				<li class="fieldcontain">
					<span id="aCTA-label" class="property-label"><g:message code="EZ.aCTA.label" default="A CTA" /></span>
					
						<span class="property-value" aria-labelledby="aCTA-label"><g:fieldValue bean="${EZInstance}" field="aCTA"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.otFlt}">
				<li class="fieldcontain">
					<span id="otFlt-label" class="property-label"><g:message code="EZ.otFlt.label" default="Ot Flt" /></span>
					
						<span class="property-value" aria-labelledby="otFlt-label"><g:fieldValue bean="${EZInstance}" field="otFlt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.reg}">
				<li class="fieldcontain">
					<span id="reg-label" class="property-label"><g:message code="EZ.reg.label" default="Reg" /></span>
					
						<span class="property-value" aria-labelledby="reg-label"><g:link controller="REGISTRATION" action="show" id="${EZInstance?.reg?.id}">${EZInstance?.reg?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.dst}">
				<li class="fieldcontain">
					<span id="dst-label" class="property-label"><g:message code="EZ.dst.label" default="Dst" /></span>
					
						<span class="property-value" aria-labelledby="dst-label"><g:fieldValue bean="${EZInstance}" field="dst"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.dPTM}">
				<li class="fieldcontain">
					<span id="dPTM-label" class="property-label"><g:message code="EZ.dPTM.label" default="D PTM" /></span>
					
						<span class="property-value" aria-labelledby="dPTM-label"><g:fieldValue bean="${EZInstance}" field="dPTM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.sTD}">
				<li class="fieldcontain">
					<span id="sTD-label" class="property-label"><g:message code="EZ.sTD.label" default="S TD" /></span>
					
						<span class="property-value" aria-labelledby="sTD-label"><g:link controller="stand" action="show" id="${EZInstance?.sTD?.id}">${EZInstance?.sTD?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.psg}">
				<li class="fieldcontain">
					<span id="psg-label" class="property-label"><g:message code="EZ.psg.label" default="Psg" /></span>
					
						<span class="property-value" aria-labelledby="psg-label"><g:fieldValue bean="${EZInstance}" field="psg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.rtn}">
				<li class="fieldcontain">
					<span id="rtn-label" class="property-label"><g:message code="EZ.rtn.label" default="Rtn" /></span>
					
						<span class="property-value" aria-labelledby="rtn-label"><g:fieldValue bean="${EZInstance}" field="rtn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.load}">
				<li class="fieldcontain">
					<span id="load-label" class="property-label"><g:message code="EZ.load.label" default="Load" /></span>
					
						<span class="property-value" aria-labelledby="load-label"><g:fieldValue bean="${EZInstance}" field="load"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.gse}">
				<li class="fieldcontain">
					<span id="gse-label" class="property-label"><g:message code="EZ.gse.label" default="Gse" /></span>
					
						<span class="property-value" aria-labelledby="gse-label"><g:fieldValue bean="${EZInstance}" field="gse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.bch}">
				<li class="fieldcontain">
					<span id="bch-label" class="property-label"><g:message code="EZ.bch.label" default="Bch" /></span>
					
						<span class="property-value" aria-labelledby="bch-label"><g:fieldValue bean="${EZInstance}" field="bch"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.agt}">
				<li class="fieldcontain">
					<span id="agt-label" class="property-label"><g:message code="EZ.agt.label" default="Agt" /></span>
					
						<span class="property-value" aria-labelledby="agt-label"><g:fieldValue bean="${EZInstance}" field="agt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.brs}">
				<li class="fieldcontain">
					<span id="brs-label" class="property-label"><g:message code="EZ.brs.label" default="Brs" /></span>
					
						<span class="property-value" aria-labelledby="brs-label"><g:fieldValue bean="${EZInstance}" field="brs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${EZInstance?.add}">
				<li class="fieldcontain">
					<span id="add-label" class="property-label"><g:message code="EZ.add.label" default="Add" /></span>
					
						<span class="property-value" aria-labelledby="add-label"><g:fieldValue bean="${EZInstance}" field="add"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:EZInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${EZInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
