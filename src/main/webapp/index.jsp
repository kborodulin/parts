<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Parts</title>
</head>
<body>


<h2 align="center">PARTS (компьютерные комплектующие)</h2>

<h3 align="center">Список устройств</h3>

<table align="center">
    <c:forEach begin="1" end="${countPage}" var="page">
        <th>
            <a href="/index${page}">${page}</a>
        </th>
    </c:forEach>
</table>

<form method="post" action="find">
    <table border="1" align="center">
        <tr>
            <th colspan="2" align="center">Поиск по детали</th>
            <th colspan="3">
                <input name="finddetail" type="text" size="70%"/>
            </th>
            <th>
                <input type="submit" value="Поиск">
            </th>
        </tr>
        <tr>
            <th colspan="6" height="20px"></th>
        </tr>
        <tr>
            <th>ИД</th>
            <th>Наименование</th>
            <th>Необходимость</th>
            <th>Количество</th>
            <th>Изменить</th>
            <th>Удалить</th>
        </tr>
        <c:forEach items="${listPart}" var="part">
            <tr>
                <th>${part.id} </th>
                <th>${part.name}</th>
                <th>${part.necessity}</th>
                <th>${part.amount}</th>
                <th><a href="/get/${part.id}">Изменить</a></th>
                <th><a href="/delete/${part.id}">Удалить</a></th>
            </tr>
        </c:forEach>
        <tr>
            <th height="20px"></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        <tr>
            <th></th>
            <th>Можно собрать</th>
            <th>${countComp}</th>
            <th>компьютеров</th>
            <th></th>
            <th></th>
        </tr>
    </table>
</form>

<h3 align="center">Добавить новое устройство</h3>

<form method="post" action="part/add" modelAttribute="part">
    <table align="center">
        <tr>
            <td style="font-weight: bold">
                <label>Наименование</label>
            </td>
            <td>
                <input name="name" type="text"/>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold">
                <label>Необходимость</label>
            </td>
            <td>
                <input name="necessity" type="text" value="0" pattern="[0-1]{1}"/>
            </td>
        </tr>
        <tr>
            <td style="font-weight: bold">
                <label>Количество</label>
            </td>
            <td>
                <input name="amount" type="text" value="0"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="Сохранить">
            </td>
        </tr>
    </table>
</form>


</body>
</html>
