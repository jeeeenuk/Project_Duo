<%--
  Created by IntelliJ IDEA.
  User: jeenukjung
  Date: 2024. 5. 30.
  Time: 오후 8:50
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
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
    <script>
        $(function () {
            new Chart(document.getElementById("doughnut-chart"), {
                type: 'doughnut',
                data: {
                    labels: ["남자", "여자"],
                    datasets: [
                        {
                            label: "Population (millions)",
                            backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
                            data: [${caculateRation}, 100 - ${caculateRation}]
                        }
                    ]
                },
                options: {
                    title: {
                        display: true,
                        text: '가입된 여성 남성의 비율'
                    }
                }
            });
        })
    </script>
</head>
<body>
<canvas id="doughnut-chart" width="500" height="200"></canvas>
</body>
</html>
