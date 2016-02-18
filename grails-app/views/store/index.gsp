%{--
<%--
  Created by IntelliJ IDEA.
  User: piassa1
  Date: 9/9/2015
  Time: 12:37 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta name="layout" content="main3">
    <title>gTunes Store</title>

</head>
<body id="body">
<h1>Your online music store and storage service!</h1>
<p>Manage your own library, browse music and purchase new tracks as they
become available</p>

<div id="navPane">
    <g:if test="${session.user}">
        <ul>
            <li><g:link controller="user"
                        action="music">My Music</g:link></li>
            <li><g:link controller="store"
                        action="shop">The Store</g:link></li>
        </ul>
    </g:if>
    <g:else>
        <div id="registerPane">
            Need an account?
            <g:link controller="user"
                    action="register">Signup now</g:link>
            to start your own personal Music collection!
        </div>
    </g:else>
</div>

</body>
</html>--}%
