<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="data.dao.ProjectDao" %>
<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String userPassword = request.getParameter("userPassword");

    ProjectDao dao = new ProjectDao();
    boolean isLogin = dao.login(userId, userPassword);

    if (isLogin) {
        session.setAttribute("userId", userId);
        response.sendRedirect("list.jsp");
    } else {
        out.println("<script>alert('로그인 실패'); location.href='login.jsp';</script>");
    }
%>