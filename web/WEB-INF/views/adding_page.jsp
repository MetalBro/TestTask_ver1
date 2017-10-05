<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Добавление новой книги</title>
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
    <b>Введите данные новой книги:</b><br>
<spring:form modelAttribute="bookEntity" method="POST" action="add_new_book" acceptCharset="UTF-8">
    <table>
        <tr>
            <td><spring:label path="title">Title:</spring:label></td>
            <td><input type="text" maxlength="100" name="title"/></td>
        </tr>

        <tr>
            <td><spring:label path="description">Description</spring:label></td>
            <td><input type="text" maxlength="255" name="description"/></td>
        </tr>

        <tr>
            <td><spring:label path="author">Author</spring:label></td>
            <td><input type="text" maxlength="100" name="author"/></td>
        </tr>

        <tr>
            <td><spring:label path="isbn">ISBN</spring:label></td>
            <td><input type="text" maxlength="20" name="isbn"/></td>
        </tr>

        <tr>
            <td><spring:label path="printYear">printYear</spring:label></td>
            <td><input type="number" maxlength="4" name="printYear"/></td>
        </tr>

    </table>

    <input type="submit"/>
</spring:form>
</div>
</body>
</html>