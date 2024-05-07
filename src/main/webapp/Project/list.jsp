<%@ page import="data.dao.DogDao" %>
<%@ page import="data.dto.DogDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hankyung
  Date: 5/3/24
  Time: 8:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="list.css" rel="stylesheet" type="text/css">
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
</head>
<%
    DogDao dao = new DogDao();
    List<DogDto> list = dao.getAllDog();
%>
<body>
<div id="listmain">
    <h2 style="text-align: center">나를 소개할게!</h2>
<%
    for (DogDto dto : list) {%>
<div class="list">
    <img src='<%=dto.getDogImg()%>'>
<br><%=dto.getDogName()%>
    <br>
    <button type="button" class="btn btn-sm btn-outline-danger"
            onclick="location.href='detail.jsp?IDX=<%=dto.getIDX()%>'">상세보기</button>

</div>
<%
    }
%>
    <img src="../image/dog/6.png">
        <img src="../image/dog/9..png" align="right" width="300px">
    <img src="../image/dog/11.png" style="margin-left: 220px" height="320px">
</div>


</body>
</html>
