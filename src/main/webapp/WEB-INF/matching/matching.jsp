<%--
  Created by IntelliJ IDEA.
  User: wancheol
  Date: 6/1/24
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
    <style>
        body * {
            font-family: 'Jua';
        }

        .profile-image {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
    </style>
</head>
<body>
<h1>Matching</h1>
<form action="./randomMatch" method="get">
    <input type="hidden" name="tableName" value="${tableName}">
    <button type="submit" class="btn btn-sm">생성하기</button>
</form>
<table class="table table-bordered" style="width: 500px;">
    <tr align="center">
        <th width="100px">이름</th>
        <th>생년월일</th>
        <th>선택</th>
    </tr>
    <form action="./completeMatch" method="get">
        <c:forEach var="dto" items="${list}">
            <input type="hidden" name="name" value="${dto.name}">
            <input type="hidden" name="id" value="${dto.id}">
            <input type="hidden" name="tableName" value="${tableName}">
            <input type="hidden" name="loginID" value="${dto.photo}">
            <tr valign="middle">
                <td>
                    <img src="${stpath}/${dto.photo}" class="profile-image">${dto.name}
                </td>
                <td>${dto.birthday}</td>
                <td>
                    <button type="submit" class="btn btn-sm btn-outline-primary">detail</button>
                </td>
            </tr>
        </c:forEach>
    </form>
</table>
</body>
</html>
