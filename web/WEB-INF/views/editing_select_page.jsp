<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <h1 align="center">User Edit Choices</h1>
</head>
<body>
<div align="center">
<spring:form method="post" action="select_edit_action?id=${id}">

    <center><b>Выберите действие:</b><br></center>
    <table>
    <tr>
        <td><input type="radio" name="action" value="mark_book_read">Отметить книгу прочитанной<br></td>
    </tr>
    <tr>
        <td><input type="radio" name="action" value="update_new_edition">Заменить на новое издание<br></td>
    </tr>
    </table>
    <center><input type="submit"></center>

</spring:form>
</div>
</body>
</html>
