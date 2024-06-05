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
    <button class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#login"
            style="margin-top:20px;float: right;margin-right: 20px">로그인
    </button>
    <button class="btn btn-sm" data-bs-toggle="modal" data-bs-target="#join" style="margin-top:20px;float: right;">
        회원가입
    </button>
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
    <style type="text/css">* {cursor: url(https://ani.cursors-4u.net/symbols/sym-9/sym840.ani), url(https://ani.cursors-4u.net/symbols/sym-9/sym840.png), auto !important;}</style><a href="https://www.cursors-4u.com/cursor/2018/02/17/flowing-hearts.html" target="_blank" title="Flowing Hearts"><img src="https://cur.cursors-4u.net/cursor.png" border="0" alt="Flowing Hearts" style="position:absolute; top: 0px; right: 0px;" /></a>
    <c:set var="root" value="<%=request.getContextPath()%>"/>
    <script type="text/javascript">
        // <![CDATA[
        var colour="random"; // in addition to "random" can be set to any valid colour eg "#f0f" or "red"
        var sparkles=50;

        /****************************
         *  Tinkerbell Magic Sparkle *
         *(c)2005-13 mf2fm web-design*
         *  http://www.mf2fm.com/rv  *
         * DON'T EDIT BELOW THIS BOX *
         ****************************/
        var x=ox=400;
        var y=oy=300;
        var swide=800;
        var shigh=600;
        var sleft=sdown=0;
        var tiny=new Array();
        var star=new Array();
        var starv=new Array();
        var starx=new Array();
        var stary=new Array();
        var tinyx=new Array();
        var tinyy=new Array();
        var tinyv=new Array();

        window.onload=function() { if (document.getElementById) {
            var i, rats, rlef, rdow;
            for (var i=0; i<sparkles; i++) {
                var rats=createDiv(3, 3);
                rats.style.visibility="hidden";
                rats.style.zIndex="999";
                document.body.appendChild(tiny[i]=rats);
                starv[i]=0;
                tinyv[i]=0;
                var rats=createDiv(5, 5);
                rats.style.backgroundColor="transparent";
                rats.style.visibility="hidden";
                rats.style.zIndex="999";
                var rlef=createDiv(1, 5);
                var rdow=createDiv(5, 1);
                rats.appendChild(rlef);
                rats.appendChild(rdow);
                rlef.style.top="2px";
                rlef.style.left="0px";
                rdow.style.top="0px";
                rdow.style.left="2px";
                document.body.appendChild(star[i]=rats);
            }
            set_width();
            sparkle();
        }}

        function sparkle() {
            var c;
            if (Math.abs(x-ox)>1 || Math.abs(y-oy)>1) {
                ox=x;
                oy=y;
                for (c=0; c<sparkles; c++) if (!starv[c]) {
                    star[c].style.left=(starx[c]=x)+"px";
                    star[c].style.top=(stary[c]=y+1)+"px";
                    star[c].style.clip="rect(0px, 5px, 5px, 0px)";
                    star[c].childNodes[0].style.backgroundColor=star[c].childNodes[1].style.backgroundColor=(colour=="random")?newColour():colour;
                    star[c].style.visibility="visible";
                    starv[c]=50;
                    break;
                }
            }
            for (c=0; c<sparkles; c++) {
                if (starv[c]) update_star(c);
                if (tinyv[c]) update_tiny(c);
            }
            setTimeout("sparkle()", 40);
        }

        function update_star(i) {
            if (--starv[i]==25) star[i].style.clip="rect(1px, 4px, 4px, 1px)";
            if (starv[i]) {
                stary[i]+=1+Math.random()*3;
                starx[i]+=(i%5-2)/5;
                if (stary[i]<shigh+sdown) {
                    star[i].style.top=stary[i]+"px";
                    star[i].style.left=starx[i]+"px";
                }
                else {
                    star[i].style.visibility="hidden";
                    starv[i]=0;
                    return;
                }
            }
            else {
                tinyv[i]=50;
                tiny[i].style.top=(tinyy[i]=stary[i])+"px";
                tiny[i].style.left=(tinyx[i]=starx[i])+"px";
                tiny[i].style.width="2px";
                tiny[i].style.height="2px";
                tiny[i].style.backgroundColor=star[i].childNodes[0].style.backgroundColor;
                star[i].style.visibility="hidden";
                tiny[i].style.visibility="visible"
            }
        }

        function update_tiny(i) {
            if (--tinyv[i]==25) {
                tiny[i].style.width="1px";
                tiny[i].style.height="1px";
            }
            if (tinyv[i]) {
                tinyy[i]+=1+Math.random()*3;
                tinyx[i]+=(i%5-2)/5;
                if (tinyy[i]<shigh+sdown) {
                    tiny[i].style.top=tinyy[i]+"px";
                    tiny[i].style.left=tinyx[i]+"px";
                }
                else {
                    tiny[i].style.visibility="hidden";
                    tinyv[i]=0;
                    return;
                }
            }
            else tiny[i].style.visibility="hidden";
        }

        document.onmousemove=mouse;
        function mouse(e) {
            if (e) {
                y=e.pageY;
                x=e.pageX;
            }
            else {
                set_scroll();
                y=event.y+sdown;
                x=event.x+sleft;
            }
        }

        window.onscroll=set_scroll;
        function set_scroll() {
            if (typeof(self.pageYOffset)=='number') {
                sdown=self.pageYOffset;
                sleft=self.pageXOffset;
            }
            else if (document.body && (document.body.scrollTop || document.body.scrollLeft)) {
                sdown=document.body.scrollTop;
                sleft=document.body.scrollLeft;
            }
            else if (document.documentElement && (document.documentElement.scrollTop || document.documentElement.scrollLeft)) {
                sleft=document.documentElement.scrollLeft;
                sdown=document.documentElement.scrollTop;
            }
            else {
                sdown=0;
                sleft=0;
            }
        }

        window.onresize=set_width;
        function set_width() {
            var sw_min=999999;
            var sh_min=999999;
            if (document.documentElement && document.documentElement.clientWidth) {
                if (document.documentElement.clientWidth>0) sw_min=document.documentElement.clientWidth;
                if (document.documentElement.clientHeight>0) sh_min=document.documentElement.clientHeight;
            }
            if (typeof(self.innerWidth)=='number' && self.innerWidth) {
                if (self.innerWidth>0 && self.innerWidth<sw_min) sw_min=self.innerWidth;
                if (self.innerHeight>0 && self.innerHeight<sh_min) sh_min=self.innerHeight;
            }
            if (document.body.clientWidth) {
                if (document.body.clientWidth>0 && document.body.clientWidth<sw_min) sw_min=document.body.clientWidth;
                if (document.body.clientHeight>0 && document.body.clientHeight<sh_min) sh_min=document.body.clientHeight;
            }
            if (sw_min==999999 || sh_min==999999) {
                sw_min=800;
                sh_min=600;
            }
            swide=sw_min;
            shigh=sh_min;
        }

        function createDiv(height, width) {
            var div=document.createElement("div");
            div.style.position="absolute";
            div.style.height=height+"px";
            div.style.width=width+"px";
            div.style.overflow="hidden";
            return (div);
        }

        function newColour() {
            var c=new Array();
            c[0]=255;
            c[1]=Math.floor(Math.random()*256);
            c[2]=Math.floor(Math.random()*(256-c[1]/2));
            c.sort(function(){return (0.5 - Math.random());});
            return ("rgb("+c[0]+", "+c[1]+", "+c[2]+")");
        }
        // ]]>
    </script>
    <script type="text/javascript">
        let jungbok = false;

        $(function () {
            $("#myFile").change(function () {
                console.log($(this)) // 배열타입으로 넘어오는 것을 확인할 수 있다.
                let reg = /(.*?)\/(jpg|jpeg|png|gif)$/
                let f = $(this)[0].files[0]
                if (!f.type.match(reg)) {
                    alert("이미지 파일만 가능합니다.")
                    return
                }
                if (f) {
                    let reader = new FileReader()
                    reader.onload = function (e) {
                        $("#showImg1").attr("src", e.target.result)
                    }
                    reader.readAsDataURL($(this)[0].files[0])
                }
            })
            // 중복버튼 이벤트
            $("#btnCheckID").on("click", function () {
                if ($("#myID").val() === '') {
                    alert("가입할 아이디를 입력하세요.")
                    return;
                }
                $.ajax({
                    type: "get",
                    dataType: "json",
                    url: "/user/checkID",
                    data: {"searchID": $("#myID").val()},
                    success: function (data) {
                        if (data.count === 0) {
                            alert("가입이 가능한 아이디 입니다.")
                            jungbok = true;
                        } else {
                            alert("중복된 아이디 입니다.")
                            jungbok = false;
                            $("#myID").val("");
                        }
                    }
                })
            })
            // id 입력시 다시 중복확인을 누르도록 중복 변수를 초기화 한다.
            $("#myID").on("keyup", function () {
                jungbok = false;
            })
            $("#loginFRM").on("submit", function (e) {
                e.preventDefault();
                let fdata = $(this).serialize();
                $.ajax({
                    url: `${root}/user/login`,
                    type: "get",
                    data: fdata,
                    dataType: "json",
                    success: function (data) {
                        if (data.status === 'success') {
                            location.href = `${root}/main/login`
                        } else {
                            alert("로그인 실패");
                        }
                    }
                })
            })
        })

        function check() {
            if (!jungbok) {
                alert("중복확인을 해주세요");
                return false; // false 반환시 action 실행을 하지 못하게 한다.
            }
        }
    </script>
</head>
<body style="background-color: #f9f5f1">
<div style="float:right; background-color: #f9f5f1;">
    <img src="/image/marryme.png" style="width: 50%; margin-left: 375px">
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
                <form id="loginFRM">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <table class="table table-bordered">
                            <caption align="top">
                                <label>
                                    <input type="checkbox" name="saveID"
                                    ${sessionScope.saveID==null or sessionScope.saveID=='no'?"":"checked"}>&nbsp;&nbsp;아이디저장
                                </label>
                            </caption>
                            <tr>
                                <th class="table-success" width="80">아이디</th>
                                <td>
                                    <input type="text" name="myID" class="form-control" required
                                           value="${sessionScope.saveID!=null and sessionScope.saveID=='yes'?sessionScope.loginID:''}">
                                </td>
                            </tr>
                            <tr>
                                <th class="table-success" width="80">비밀번호</th>
                                <td>
                                    <input type="password" name="myPW" class="form-control" required="required">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-sm btn-danger">로그인</button>
                        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal" id="btnClose">닫기
                        </button>
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
            <div align="center">
                <form action="/user/insert" method="post" enctype="multipart/form-data" onsubmit="return check()">
                    <input type="hidden" name="num" value="1">
                    <table class="table table-bordered" style="width: 400px">
                        <tr>
                            <th width="100" class="table-info">이름</th>
                            <td colspan="2">
                                <input type="text" name="name" class="form-control" required>
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">ID</th>
                            <td colspan="2">
                                <div class="input-group">
                                    <input type="text" name="id" id="myID" class="form-control" required> &nbsp;
                                    <button type="button" class="btn btn-sm btn-outline-success" id="btnCheckID">중복확인
                                    </button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">사진</th>
                            <td width="200">
                                <input type="file" name="myFile" id="myFile" class="form-control" required>
                            </td>
                            <td rowspan="2">
                                <img src="" id="showImg1" style="width: 100%;"
                                     onerror="this.src='../image/noimages1.jpeg'">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">PW</th>
                            <td width="200">
                                <input type="password" name="pw" class="form-control" required maxlength="8">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">HP</th>
                            <td width="200" colspan="2">
                                <input type="tel" name="hp" class="form-control" required
                                       pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" placeholder="xxx-xxxx-xxxx">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">E-Mail</th>
                            <td width="200" colspan="2">
                                <input type="email" name="email" class="form-control" required>
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">주소</th>
                            <td width="200" colspan="2">
                                <input type="text" name="addr" class="form-control" required>
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">생년월일</th>
                            <td width="200" colspan="2">
                                <input type="date" name="birthday" class="form-control" value="2000-01-01">
                            </td>
                        </tr>
                        <tr>
                            <th width="100" class="table-info">성별</th>
                            <td width="200" colspan="2">
                                <div>
                                    <input type="radio" name="tableName" id="male" class="form-check-input"
                                           value="m_user" checked><label for="male">남자</label>
                                    <input type="radio" name="tableName" id="female" class="form-check-input"
                                           value="fm_user"><label for="female">여자</label>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <button type="submit" class="btn btn-outline-success" style="width: 100px">Submit
                                </button>
                                <button type="reset" class="btn btn-outline-danger" style="width: 100px">Reset</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>