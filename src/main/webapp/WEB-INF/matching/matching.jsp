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
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
    <style>
        body * {
            font-family: 'swap';
        }

        .profile-image {
            width: 200px;
            height: 200px;
            border-radius: 50px;
        }
    </style>
</head>
<body>
<form action="./randomMatch" method="get">
    <input type="hidden" name="tableName" value="${tableName}">
    <button type="submit" class="btn btn-sm" style="font-size: 1.2em">매칭 하기</button>
</form>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
<%--<h1>현재 총 매칭 인원 : ${totalMatched}</h1>--%>
<c:if test="${userIsMatched==1}">
    <div align="center">
        <h1><b>매칭 완료!</b></h1>
        <div style="width: 600px">
            <div style="float: left">
                <img src="${stpath}/${myDto.photo}" class="profile-image"><br>
                <h6 style="font-size: 2em">${myDto.name}</h6>
                <h6>${myDto.birthday}</h6>
            </div>
            <div style="width: 200px; float: left;margin-top: 30px" align="center">
                <i class="bi bi-heart-fill" style="color: red; font-size: 10em"></i>
                <button class="btn btn-sm btn-outline-success" style="margin-top: 20px" data-bs-toggle="modal" data-bs-target="#buyHeart">상대와 대화하기</button>
            </div>
            <div style="float: right">
                <img src="${stpath}/${otherDto.photo}" class="profile-image"><br>
                <h6 style="font-size: 2em">${otherDto.name}</h6>
                <h6>${otherDto.birthday}</h6>
            </div>
        </div>
    </div>
</c:if>
<c:if test="${userIsMatched==0}">
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
</c:if>
<div class="modal" id="buyHeart">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Modal Heading</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                Modal body..
            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
            </div>

        </div>
    </div>
</div>
</body>
</html>
