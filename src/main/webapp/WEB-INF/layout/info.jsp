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
        body {
            font-family: "KimjungchulGothic-Bold";
        }

        .sidenav {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #FCEDAA;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidenav a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 25px;
            color: #363636;
            display: block;
            transition: 0.3s;
        }

        .sidenav a:hover {
            color: lightpink;
            text-decoration: underline;
        }

        .sidenav .closebtn {
            position: absolute;
            top: 0;
            right: 25px;
            font-size: 36px;
            margin-left: 50px;
        }

        #main {
            transition: margin-left .5s;
            padding: 16px;
        }

        @media screen and (max-height: 450px) {
            .sidenav {padding-top: 15px;}
            .sidenav a {font-size: 18px;}
        }
    </style>
    <script>


        function openNav() {
            document.getElementById("mySidenav").style.width = "250px";
            document.getElementById("main").style.marginLeft = "250px";
        }

        function closeNav() {
            document.getElementById("mySidenav").style.width = "0";
            document.getElementById("main").style.marginLeft= "0";
        }
    </script>
</head>
<c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
<div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="#">About</a>
    <a href="#">Services</a>
    <a href="#" data-bs-toggle="modal" data-bs-target="#myModal">Contact</a>
    <pre class="info"> <br><br><br><br><br><br>
&nbsp;<i class="bi bi-house-heart"></i>&nbsp;&nbsp;&nbsp;(주)메리미
&nbsp;<i class="bi bi-person-circle"></i>&nbsp;&nbsp;&nbsp;대표 : 신완철,정진욱
&nbsp;<i class="bi bi-phone-fill"></i>&nbsp;&nbsp;&nbsp;010-2233-4455
&nbsp;<i class="bi bi-people-fill"></i>&nbsp;&nbsp;친구매칭사이트
&nbsp;<i class="bi bi-controller"></i>&nbsp;&nbsp;&nbsp;밸런스게임도 해보세요
</pre>
    <pre class="info2">
&nbsp;<img src="/image/navercloud_logo.jpeg" style="width: 20px;height: 20px">&nbsp;네이버클라우드 비트캠프
&nbsp;<i class="bi bi-book"></i>&nbsp;&nbsp;&nbsp;비트캠프701
&nbsp;<i class="bi bi-building"></i>&nbsp;&nbsp;&nbsp;서울특별시 강남구 <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;강남대로 94길 20 ,7층
</pre>
</div>

<div id="main">
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Marry Me</span>
</div>
<!-- The Modal -->
<div class="modal" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">오시는 길</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <img src="${stpath}/comeinfo.png" style="width: 300px;height: 300px">
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