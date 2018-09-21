<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>update</title>
</head>
<body>


<h3 align="center">Обновить устройство</h3>

<form method="post" action="/update/${part.id}" modelAttribute="part">
    <table align="center">
        <tr>
            <td style="font-weight: bold">
                <label>ID</label>
            </td>
            <td>
                <input name="id" type="text" value="${part.id}" readonly="true" disabled="true"/>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold">
                <label>Наименование</label>
            </td>
            <td>
                <input name="name" type="text" value="${part.name}"/>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold">
                <label>Необходимость</label>
            </td>
            <td>
                <input name="necessity" type="text" pattern="[0-1]{1}" value="${part.necessity}"/>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold">
                <label>Количество</label>
            </td>
            <td>
                <input name="amount" type="text" value="${part.amount}"/>
            </td>
        </tr>
        <tr>
            <td colspan=" 2" align="center">
                <input type="submit" value="Обновить">
            </td>
        </tr>
    </table>
</form>


</body>
</html>
