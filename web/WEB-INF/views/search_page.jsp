<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Поиск книги</title>
</head>
<body>
<div align="center">
<spring:form method="POST" action="search_book" acceptCharset="UTF-8">
    <table>
        <tr>
            <td>Введите название(title) искомой книги:</td>
            <td><input type="text" name="title"/></td>
        </tr>
    </table>

    <input type="submit"/>
</spring:form>
</div>
</body>
</html>
