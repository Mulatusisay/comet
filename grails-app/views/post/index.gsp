<%--
  Created by IntelliJ IDEA.
  User: piassa1
  Date: 17/8/2015
  Time: 9:49 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Status post</title>
</head>

<body>
<h1>what are you doing?</h1>
<div class="updateStatusForm">
    <g:formRemote  url="[action : 'updateStatus']" update="messagesList" name="updateStatusForm">
        <g:textArea name="message" value=""/><br/>
        <g:submitButton name="Update Status"/>
    </g:formRemote>
</div>
<div id="messagesList">
    <g:render template="messages" collection="${messages}" var="message"/>
</div>

</body>
</html>