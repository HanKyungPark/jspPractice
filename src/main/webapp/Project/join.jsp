<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400..700&family=Dancing+Script:wght@400..700&family=East+Sea+Dokdo&family=Jua&family=Gaegu&family=Gamja+Flower&family=Pacifico&family=Single+Day&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <link href="join.css" rel="stylesheet" type="text/css">
    <style>
        body * {
            font-family: 'Jua';
        }
    </style>
</head>
<body id="joinback">
<form action="joinaction.jsp" method="post">
    <h1>회원가입</h1>
    <label for="userId">아이디:</label>
    <input type="text" id="userId" name="userId" required><br>

    <label for="userPassword">비밀번호:</label>
    <input type="password" id="userPassword" name="userPassword" required><br>

    <label for="userName">이름:</label>
    <input type="text" id="userName" name="userName" required><br>

    <label>성별:</label>
    <input type="radio"  name="userGender" value="male" required>남성
    <input type="radio"  name="userGender" value="female" required>여성<br>

    <label for="userEmail">이메일:</label>
    <input type="email" id="userEmail" name="userEmail" required><br>

    <input type="submit" value="회원가입">
</form>
</body>
</html>