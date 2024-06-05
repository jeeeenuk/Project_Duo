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
        div.mainLayout>div{
            border: 0px solid gray;
            position: absolute;
        }
        div.mainLayout>div a{
            text-decoration: none;
            color: black;
        }
        div.mainLayout>div.header{
            width: 100%;
            height: 150px;
            line-height: 100px;
            font-size: 35px;
            text-align: center;
        }
        div.mainLayout>div.menu{
            top: 100px;
            width: 100%;
            height: 80px;
            line-height: 80px;
        }
        div.mainLayout>div.info{
            top:250px;
            left: 50px;
            width: 200px;
            height: 300px;

        }
        div.mainLayout>div.main{
            top:210px;
            left: 300px;
            width: 70%;
            height: auto;
        }

    </style>
    <style type="text/css">* {cursor: url(https://ani.cursors-4u.net/symbols/sym-9/sym840.ani), url(https://ani.cursors-4u.net/symbols/sym-9/sym840.png), auto !important;}</style><a href="https://www.cursors-4u.com/cursor/2018/02/17/flowing-hearts.html" target="_blank" title="Flowing Hearts"><img src="https://cur.cursors-4u.net/cursor.png" border="0" alt="Flowing Hearts" style="position:absolute; top: 0px; right: 0px;" /></a>
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
</head>
<body style="background-color: #f9f5f1">
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
