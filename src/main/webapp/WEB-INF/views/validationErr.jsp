<%--
  Created by IntelliJ IDEA.
  User: ^_^
  Date: 24.03.2015
  Time: 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" type="text/css" href="resources/main.css"/>
</head>
<body>
<h2 class="error">Validation error occurred</h2>
Please, turn on JavaScript on your browser. </br>
If error whill repeat, please contact <a href="mailto:basuliic@gmail.com">us</a>.
<br>

<form>
    <input Type="button" value="Back" onClick="history.go(-1);return true;">
    <input type="button" value="Main" onclick="window.location='/index'">
</form>
</body>
</html>
