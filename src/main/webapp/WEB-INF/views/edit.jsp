<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Edit contact</title>
    <script language="Javascript" type="application/javascript">
        <!--
        function Update() {
            document.Form1.action = "/update";
            document.Form1.submit();             // Submit the page
        }

        function Add() {
            document.Form1.action = "/add";
            document.Form1.submit();             // Submit the page
        }
        -->
    </script>
</head>
<body>
<h2>Contact change form</h2>

<form:form name="Form1" method="post" modelAttribute="contact">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>First Name</td>
            <td><form:input path="firstname"/></td>
        </tr>
        <tr>
            <td>Last Name</td>
            <td><form:input path="lastname"/></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><form:input path="email"/></td>
        </tr>
        <tr>
            <td>Telephone</td>
            <td><form:input path="telephone"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" onclick="window.location='/index'" value="Cancel">
                <c:choose>
                    <c:when test="${add}">
                        <input type="submit" value="Add contact" onclick="Add()"/>
                    </c:when>
                    <c:otherwise>
                        <input type="submit" value="Save contact" onclick="Update()"/>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
