<%--
  Created by IntelliJ IDEA.
  User: hankyung
  Date: 5/3/24
  Time: 7:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 현재 세션을 무효화하여 사용자 로그아웃 처리
    session.invalidate();

    // 로그아웃 후 메인 페이지로 이동
    response.sendRedirect("main.jsp");
%>