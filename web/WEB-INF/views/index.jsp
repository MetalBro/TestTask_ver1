<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <h1 align="center">User Choices</h1>
</head>
<body>
<spring:form method="post" action="select_action" >

  <center><b>Выберите действие:</b><br></center>
  <table align="center">
  <tr>
    <td><input type="radio" name="action" value="show_all">Показать все книги<br></td>
  </tr>
  <tr>
    <td><input type="radio" name="action" value="search_book">Поиск книги<br></td>
  </tr>
  <tr>
    <td><input type="radio" name="action" value="add_book">Добавить новую книгу<br></td>
  </tr>
  </table>
  <center><input type="submit"></center>
</spring:form>
</body>
</html>
