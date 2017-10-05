<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Удаление книги</title>
</head>
<body>
<spring:form method="post" action="deleting_book?deleteBookId=${id}" >

    <center><b>Вы действительно хотите удалить книгу "${title}"?</b><br></center>
    <table align="center">
        <tr>
            <td><input type="radio" name="action" value="true">Да, удалить<br></td>
        </tr>
        <tr>
            <td><input type="radio" name="action" value="false">Нет, не удалять<br></td>
        </tr>
    </table>
    <center><input type="submit"></center>
</spring:form>
</body>
</html>
