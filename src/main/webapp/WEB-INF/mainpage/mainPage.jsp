<%--
  Created by IntelliJ IDEA.
<<<<<<< HEAD
  User: wancheol
  Date: 6/1/24
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <button class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#login" style="margin-top:20px;float: right;margin-right: 20px">로그인</button>
    <button class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#join" style="margin-top:20px;float: right;">회원가입</button>
    <style>
        body * {
            font-family: 'Jua';}
    </style>
</head>
<body>
<div style="float:right">
<embed name="MarryMe" src="/static/marryme_sound.mp3" loop="true" hidden="true" autostart="true">
    <img src="/image/marryme.png" style="width: 1000px; height: 1000px">


    <audio src="/audio/marryme_sound.mp3" controls loop="true" autoplay="autoplay" style="visibility: hidden"></audio>

<!-- The Modal -->
<div class="modal" id="login">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">회원로그인</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <form id="loginfrm">
            <!-- Modal body -->
            <div class="modal-body">

                <table class="table table-bordered">
                    <caption align="top">
                        <label>
                            <input type="checkbox" name="saveid"
                            ${sessionScope.saveid==null or sessionScope.saveid=='no'?"":"checked"}>&nbsp;&nbsp;아이디저장
                        </label>
                    </caption>
                    <tr>
                        <th class="table-success" width="80">아이디</th>
                        <td>
                            <input type="text" name="myid" class="form-control"
                                   required="required" value="${sessionScope.saveid!=null and sessionScope.saveid=='yes'?
                                       sessionScope.loginid:''}">
                        </td>
                    </tr>
                    <tr>
                        <th class="table-success" width="80">비밀번호</th>
                        <td>
                            <input type="password" name="pass" class="form-control"
                                   required="required">
                        </td>
                    </tr>
                </table>

            </div>

            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="submit" class="btn btn-sm btn-danger">로그인</button>

                <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal"
                        id="btnclose">닫기</button>
            </div>
            </form>
        </div>
    </div>
</div>
</div>
<!-- The Modal join-->
<div class="modal" id="join">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">회원가입</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
                <!-- Modal body -->
                <form action="./insert" method="post" enctype="multipart/form-data">
                    <table class="table table-bordered" style="width: 500px">
                        <caption align="top">
                            <h3><b>회원 가입</b></h3>
                        </caption>
                        <tr>
                            <th width="100" class="table-info">이름</th>
                            <td colspan="2">
                                <input type="text" name="name" class="form-control"
                                       required="required">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">아이디</th>
                            <td colspan="2">
                                <div class="input-group">
                                    <input type="text" name="myid" id="myid" class="form-control" required>
                                    &nbsp;
                                    <button type="button" class="btn btn-sm btn-danger"
                                            id="btncheckid">중복확인</button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">사진</th>
                            <td width="200">
                                <input type="file" name="myfile" id="myfile" class="form-control"
                                       required="required" >
                            </td>
                            <td rowspan="2">
                                <img src="" id="showimg1" style="width: 100%"
                                     onerror="this.src='../image/noimages1.jpeg'">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">비밀번호</th>
                            <td width="200">
                                <input type="password" name="passwd" class="form-control"
                                       required="required" maxlength="8">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">핸드폰</th>
                            <td width="200" colspan="2">
                                <input type="tel" name="hp" class="form-control"
                                       required="required" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}"
                                       placeholder="xxx-xxxx-xxxx">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">이메일</th>
                            <td width="200" colspan="2">
                                <input type="email" name="email" class="form-control"
                                       required="required" >
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">주소</th>
                            <td width="200" colspan="2">
                                <input type="text" name="addr" class="form-control"
                                       required="required" >
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">생년월일</th>
                            <td width="200" colspan="2">
                                <input type="date" name="birthday" class="form-control"
                                       value="2024-01-01">
                            </td>
                        </tr>

                    </table>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-sm btn-danger">회원가입</button>

                        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal"
                                id="joinclose">닫기</button>
                    </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>
