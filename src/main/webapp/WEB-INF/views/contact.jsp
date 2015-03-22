<%@ page language="java" contentType="text/html; charset=utf8"
         pageEncoding="utf8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf8">
    <title>Contact Base</title>
    <link rel="stylesheet" type="text/css" href="resources/main.css"/>
    <script language="Javascript" type="application/javascript">
        <!--
        function Delete() {
            document.Form1.action = "/delete";
            document.Form1.submit();             // Submit the page
        }

        function Edit() {
            if (document.querySelectorAll('input[type="checkbox"]:checked').length <= 1) {
                document.Form1.action = "/edit";
                document.Form1.submit();             // Submit the page
            } else {
                alert("Please select just one row to be edited");
            }
        }
        -->
    </script>
    <noscript>You need Javascript enabled for this to work</noscript>
</head>
<body>
<h2>Contact Base</h2>

<h3>Contacts</h3>

<div>
    <form name="Form1" method="POST">
        <table border="1">
            <tr>
                <th class="heading" width="4%">&nbsp;</th>
                <th class="heading" width="30%">Name</th>
                <th class="heading" width="18%">Email</th>
                <th class="heading" width="18%">Telephone</th>
                <th class="heading" width="30%">Creation time</th>
            </tr>
            <c:if test="${!empty contactList}">
                <c:forEach items="${contactList}" var="contact">
                    <tr>
                        <td align="center">
                            <input type="checkbox" name="checkboxGroup"
                                   value="<c:out value="${contact.id}"/>"/>
                        </td>
                        <td align="left">${contact.firstname} ${contact.lastname}</td>
                        <td align="left">${contact.email}</td>
                        <td align="left">${contact.telephone}</td>
                        <td align="left">${contact.creationDate}</td>
                    </tr>
                </c:forEach>
            </c:if>
        </table>
        <input type="button" onclick="Delete()" value="Delete">
        <input type="button" onclick="Edit()" value="Edit">
        <input type="button" onclick="location.reload(true)" value="Refresh">
    </form>
</div>
</body>
</html>