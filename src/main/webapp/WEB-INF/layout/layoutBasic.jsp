<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 30.
  Time: 오후 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
        div.mainlayout>div{
            border: 0px solid gray;
            position: absolute;
        }
        div.mainlayout>div a{
            text-decoration: none;
            color: black;
        }
        div.mainlayout>div.header{
            width: 100%;
            height: 150px;
            line-height: 100px;
            font-size: 35px;
            text-align: center;
        }
        div.mainlayout>div.menu{
            top: 100px;
            width: 100%;
            height: 80px;
            line-height: 80px;
        }
        div.mainlayout>div.info{
            top:250px;
            left: 50px;
            width: 200px;
            height: 300px;

        }
        div.mainlayout>div.main{
            top:210px;
            left: 300px;
            width: 70%;
            height: auto;
        }

    </style>
</head>
<body>
<div class="mainLayout">
    <div class="header">
        <tiles:insertAttribute name="header"/>
    </div>
    <div class="menu">
        <tiles:insertAttribute name="menu"/>
    </div>
    <div class="info">
        <tiles:insertAttribute name="info"/>
    </div>
    <div class="main">
        <tiles:insertAttribute name="main"/>
    </div>
</div>
</body>
</html>
