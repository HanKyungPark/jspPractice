<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap"
          rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="main.css" rel="stylesheet" type="text/css">

    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
</head>
<body>
<div id="mainimg">
    <div>
        <div>
            <header>
                <ul>
                    <li>내새끼 오구오구</li>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <li>유기견돌봄센터</li>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <li>댕댕이와 함께 춤을</li>
                    &nbsp;&nbsp;|&nbsp;&nbsp;
                    <li>701 화이팅</li>
                </ul>
                <img src="../image/dog/gg.png">
            </header>
        </div>

        <%
            // 로그인 상태 확인
            String userId = (String) session.getAttribute("userId");
            if (userId == null) {
        %>
        <div id="mainlogin">
            <a class="atag" href="login.jsp">로그인</a>
            <a class="atag" href="join.jsp">회원가입</a>
        </div>
        <div id="poster">
            <img class="poster" src="../image/dog/zz.jpg">
            <img class="poster" src="../image/dog/xx.jpg">
        </div>
        <div class="ptag">
            <p><b>자기 자신보다 당신을 더 사랑하는 이 세상에서 유일한 생명체 입니다.<br>
                반려견과 반려인 모두 행복해지기 위해서 동물을 사랑하고 펫티켓을 준수합시다.</b></p>
        </div>
        <%
        } else {
        %>

        <p><%=userId%>견주님 환영합니다!</p>
        <a href="logout.jsp?action=logout">집에 돌아가기.</a>
        <%
            }
        %>
        <div id="maindog">
            <img class="leftdog" src="../image/dog/8..png">
        </div>
        <div>
            <img class="rightdog" src="../image/dog/15.png">
        </div>
<%--        </section>--%>
    </div>
</div>

</body>
</html>