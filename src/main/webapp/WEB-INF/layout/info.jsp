<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body *{
            font-family: 'Jua';
        }
        pre.info{
            font-size: 16px;
            border: 5px solid lightpink;
            padding: 10px 10px;
            border-radius: 50px;
            background-color: antiquewhite;
        }
        pre.info2{
            font-size: 16px;
            padding: 10px 10px;
            border-radius: 50px;
            border: 5px solid lightgreen;
            background-color: lightgray;
        }
        .info:hover {
            transition: all 3s;
            transform: rotate(360deg);
        }
    </style>
</head>
<body>
<pre class="info">
<i class="bi bi-house-heart"></i>&nbsp;(주)메리미
<i class="bi bi-person-circle"></i>&nbsp;대표 : 신완철,정진욱
<i class="bi bi-phone-fill"></i>&nbsp;010-2233-4455
<i class="bi bi-people-fill"></i>&nbsp;친구매칭사이트
<i class="bi bi-controller"></i>&nbsp;밸런스게임도 해보세요
</pre>
<pre class="info2">
<img src="/image/navercloud_logo.jpeg" style="width: 20px;height: 20px">네이버클라우드 비트캠프
<i class="bi bi-book"></i>&nbsp;비트캠프701
<i class="bi bi-building"></i>&nbsp;서울특별시 강남구 <br>강남대로 94길 20 ,7층
</pre>
</body>
</html>