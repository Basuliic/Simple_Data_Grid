<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
