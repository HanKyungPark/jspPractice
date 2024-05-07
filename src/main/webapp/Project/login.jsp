<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="login.js"></script>
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
</head>
<body>
<div id="loginmain">
    <form id="namelogin" action="loginaction.jsp" method="post">
    <h1>로그인창</h1>
    <label for="userId">견주님의 아이디:</label>
    <input type="text" id="userId" placeholder="견주님의 아이디" name="userId" required><br>

    <label for="userPassword">견주님의 비밀번호:</label>
    <input type="password" id="userPassword" placeholder="견주님의 비밀번호"
           name="userPassword" required><br>

    <input type="submit" id="loginclick" value="로그인">
        <button type="button" id="btn" onclick="history.back()">개껌 놓고왔으니 이전으로 갑시다!</button>
</form>
</div>
</body>
</html>