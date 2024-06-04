<%--
  Created by IntelliJ IDEA.
  User: wancheol
  Date: 6/2/24
  Time: 4:03 PM
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
        body * {
            font-family: 'Jua';
        }
    </style>
    <c:set var="stpath" value="https://kr.object.ncloudstorage.com/bitcamp701-138/photo"/>
    <script type="text/javascript">
        $(function (){
            complaint_List();
            $("#btnAddComplaint").on("click",function (){
                let content= $("#content").val();
                if(content===''){
                    alert("글을 작성 후 등록해주세요");
                    return;
                }

                let formData=new FormData();
                for(let i=0;i<$("#photoupload")[0].files.length;i++){
                    formData.append("upload",$("#photoupload")[0].files[i]);
                }
                formData.append("content",content);
                formData.append("tableName", "m_user");
                formData.append("photoupload","uploadPhoto");

                $.ajax({
                    type:"post",
                    data:formData,
                    dataType:"text",
                    url:"./addcomplaint",
                    processData: false,
                    contentType:false,
                    success:function (){
                        complaint_List();
                        $("#content").val("");
                        $("#photoupload").val("");
                    }
                })
            })
        }); //close function

        function complaint_List()
        {
            $.ajax({
                type:"get",
                url:"./datas",
                dataType: "json",
                success:function (data) {
                    let s = `<b>총 \${data.length}개의 글이 있습니다</b><br>`;
                    $.each(data, function (idx, ele) {
                        s += `<div class="complaint_box">
                                <div>
                                <span>\${ele.writer}(\${ele.id.substring(0,3)}***)</span>
                                <span class="day">\${ele.writeday}</span>
                                </div>
                                <pre>\${ele.content}</pre>

                                <img src="${stpath}/\${ele.uploadphoto}" style="width:200px;height:200px;">
                                </div>
                                `;

                    });
                    $("div.complaintlistarea").html(s);
                }
            })
        }


        // //모달창에 제목과 사진출력
        // function large_photo(writer,photoname){
        //     $(".phototitle").text("["+writer+"]님이 올린 사진입니다");
        //
        // }
    </script>
</head>
<body>
<div>
    <h5>고객의 후기</h5>소중한 고객님의 이용후기를 작성 부탁드립니다
</div>
<c:if test="${sessionScope.loginOK!=null}">
<div class="complaintformarea" style="width: 400px;">
		<textarea style="width: 150%;height: 120px;"
                  id="content" class="form-control"></textarea>
    <br>
    <input type="file" id="photoupload" multiple="multiple">
    <button type="button" id="btnAddComplaint"
            class="btn btn-sm btn-info">등록</button>
</div>
    <hr>
</c:if>
<div class="complaintlistarea">
    방명록 목록이 나올 영역
</div>
<!-- The Modal -->
<div class="modal" id="myPhotoLargeModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title phototitle">제목</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
                <img src="" class="largephoto" style="max-width: 100%">
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
