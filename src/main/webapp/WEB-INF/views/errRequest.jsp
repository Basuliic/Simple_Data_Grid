<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <link rel="stylesheet" type="text/css" href="resources/main.css"/>
</head>
<body>
<h2 class="error">Bad request</h2>
Some strange error occured... </br>
If error whill repeat, please contact <a href="mailto:basuliic@gmail.com">us</a>.
<br>

<form>
    <input Type="button" value="Back" onClick="history.go(-1);return true;">
    <input type="button" value="Main" onclick="window.location='/index'">
</form>
</body>
</html>
