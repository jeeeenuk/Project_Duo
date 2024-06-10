<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
        div.menubox{
            margin-left: 300px;
        }

        ul.menu {
            list-style: none;
            margin-left: 100px;
        }

        ul.menu li {
            float: left;
            width: 120px;
            font-size: 25px;
            text-align: center;
            margin-right: 10px;


        }

        ul.menu li a {
            font-family: 'Single Day'
        }

        /*ul.menu li:hover {*/
        /*    box-shadow: 5px 5px 5px gray;*/
        /*    background-color: lightblue;*/
        /*    color: white;*/
        /*}*/

        ul.menu li a:hover {
            text-decoration: underline;
            color: lightpink;
        }

        div.loginArea {
            position: fixed;
            right: 50px;
            top: 100px;
        }

        div.loginArea button {
            width: 100px;
        }

        .dropdown-menu {
            display: none; /* 하위 메뉴 기본적으로 숨김 */
            position: absolute; /* 하위 메뉴가 상대 위치에서 위치 설정 */
            background-color: #f9f9f9; /* 배경색 설정 */
            min-width: 90px; /* 최소 너비 설정 */
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2); /* 그림자 효과 설정 */
            z-index: 1; /* 다른 요소 위에 표시되도록 z-index 설정 */
        }

        .dropdown:hover .dropdown-menu {
            display: block; /* 하위 메뉴 표시 */
            transition: display 0.5s ease;
        }




    </style>
    <c:set var="root" value="<%=request.getContextPath()%>"/>
    <script type="text/javascript">
        $(function () {
            //로그아웃 버튼
            $("#btnLogout").click(function () {
                $.ajax({
                    type: "get",
                    dataType: "text",
                    url: "../../user/logout",
                    success: function () {
                        console.log("logout")
                        location.href = `${root}/`
                    },
                    error: function () {
                    }
                })
            });
        });
    </script>
</head>
<body>
<div class="menubox">
<ul class="menu">
    <li>
        <a href="${root}/main/login">Home</a>
    </li>
    <li>
        <a href="${root}/matching/matching">내짝 만나기</a>
    </li>
    <li class="dropdown">
        <a data-toggle="dropdown">게시판
            <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li>
                <a href="${root}/self/self">자기소개</a>
            </li>
            <%--            <li>--%>
            <%--                <a href="${root}/meeting/meeting">우리 만나요</a>--%>
            <%--            </li>--%>
            <li>
                <a href="${root}/board/list">문의게시판</a>
            </li>
        </ul>
    </li>
    <li>
        <a href="${root}/complaint/complaint">고객의후기</a>
    </li>
</ul>
</div>

<div class="loginArea">
    <c:if test="${sessionScope.loginOK==null}">
        <script>
            alert("로그인을 해주세요.")
            location.href = "${root}/";
        </script>
    </c:if>

    <c:if test="${sessionScope.loginOK!=null}">
        <b style="font-size: 20px;">
                ${sessionScope.loginID}님</b>

        <button type="button" id="btnLogout"
                style="margin-left: 20px; color: white; background-color: lightpink"
                class="btn">로그아웃
        </button>
    </c:if>
</div>
</body>
</html>