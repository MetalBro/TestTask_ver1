<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Books</title>
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
<br>
<h1 align="center">Имеющиеся книги:</h1>
<br>
<table border="1px" align="center">
    <thead style="background:#00BFFF">
    <tr>
        <th>ID</th><th>Title</th><th>Description</th><th>Author</th><th>ISBN</th><th>printYear</th><th>readAlready</th><th colspan="2"></th>
    </tr>
    </thead>
    <c:forEach var="bookItem" items="${book_list}">
        <tr>
            <td>${bookItem.id}</td>
            <td>${bookItem.title}</td>
            <td>${bookItem.description}</td>
            <td>${bookItem.author}</td>
            <td>${bookItem.isbn}</td>
            <td>${bookItem.printYear}</td>
            <td>${bookItem.readAlready}</td>
            <td><a href="/edit_book?editBookId=${bookItem.id}">Edit</a></td>
            <td><a href="/delete_book?deleteBookId=${bookItem.id}">Delete</a></td>
        </tr>
    </c:forEach>

    <%--<c:if test="${pagination_service.pageNumber != 1}">--%>
    <c:if test="${currentPageNumber != 1}">
        <%--<td><a href="/show_all_new_page?pageNumber=${pagination_service.pageNumber - 1}">Previous</a></td>--%>
        <td><a href="/show_all_new_page?pageNumber=${currentPageNumber - 1}">Previous</a></td>
    </c:if>
    <%--<c:if test="${currentPageNumber lt pagination_service.numberOfPages}">--%>
    <c:if test="${currentPageNumber lt numberOfPages}">
        <%--<c:if test="${pagination_service.pageNumber lt pagination_service.numberOfPages}">--%>
        <%--<td><a href="/show_all_new_page?pageNumber=${pagination_service.pageNumber + 1}">Next</a></td>--%>
        <td><a href="/show_all_new_page?pageNumber=${currentPageNumber + 1}">Next</a></td>
    </c:if>
    <td><a href="/">Home</a></td>
</table>
</body>
</html>
