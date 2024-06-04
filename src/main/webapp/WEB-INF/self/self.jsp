<%--
  Created by IntelliJ IDEA.
  User: wancheol
  Date: 6/2/24
  Time: 3:26 PM
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
    <style>
        body {
            font-family: 'Jua';
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 1200px;
            margin: auto;
            padding: 20px;
        }
        .top-section {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .carousel-wrapper {
            width: 500px;
            overflow: hidden;
        }
        .carousel {
            display: flex;
            transition: transform 0.5s ease;
        }
        .carousel img {
            width: 100px;
            height: 100px;
            object-fit: cover;
            border-radius: 5px;
            margin: 0 5px;
        }

        .news-grid {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .news-card {
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin-left: 50px;
        }
        .news-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
        }
        .news-card h3 {
            font-size: 1.2em;
            margin: 10px;
        }
        .news-card p {
            margin: 10px;
        }
    </style>
</head>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
<body>
<div class="container">
    <div class="top-section">
        <div class="carousel-wrapper" style="margin-left: 20px;">
            <h4><b style="color: blue;">Duo의 얼굴</b></h4>
        </div>
    </div>
    <table>
        <tr>
    <c:forEach var="dto" items="${mlist}">
    <div class="news-grid" style="margin-right: 200px;float: left">

        <div class="news-card">
                <img src="${stpath}/${dto.photo}" style="width: 300px; height: 150px;">
                <p>${dto.name}</p>
                <p>${dto.email}</p>
                <p>${dto.birthday}</p>
        </div>
        </c:forEach>

    </div>
    <c:forEach var="dto" items="${fmlist}">
    <div class="news-grid" style="float: left">

        <div class="news-card">
            <img src="${stpath}/${dto.photo}" style="width: 300px; height: 150px;">
            <p>${dto.name}</p>
            <p>${dto.email}</p>
            <p>${dto.birthday}</p>
        </div>
        </c:forEach>
        </tr>
    </table>

    </div>
</div>


</body>
</html>
