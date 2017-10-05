<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Редактирование пользователя</title>
    <style>
        table {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        tr:nth-child(even){background-color: #f2f2f2;}

        tr:hover {background-color: #ddd;}

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #00BFFF;
            color: white;
        }
    </style>
</head>
<body>
<div align="center">
<spring:form method="POST" modelAttribute="bookEntity" action="edited_book?id=${id}" acceptCharset="UTF-8">
    <table>
        <tr>
            <td><spring:label path="id">Id книги в базе:</spring:label></td>
            <td><spring:label path="id">${id}</spring:label></td>
        </tr>

        <tr>
            <td><spring:label path="title">Новое название(title):</spring:label></td>
            <td><input type="text" maxlength="100" name="title"/></td>
        </tr>
        <tr>
            <td><spring:label path="description">Новое описание(description):</spring:label></td>
            <td><input type="text" maxlength="255" name="description"/></td>
        </tr>
        <tr>
            <td><spring:label path="isbn">Новый ISBN:</spring:label></td>
            <td><input type="text" maxlength="20" name="isbn"/></td>
        </tr>
                <tr>
            <td><spring:label path="printYear">Год издания(printYear):</spring:label></td>
            <td><input type="number" maxlength="4" max="2100" name="printYear"/></td>
        </tr>
    </table>

    <input type="submit" value="Save" />
</spring:form>
</div>
</body>
</html>
