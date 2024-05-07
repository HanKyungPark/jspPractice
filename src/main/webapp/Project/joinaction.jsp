<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="data.dao.ProjectDao, data.dto.ProjectDto" %>
<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("userId");
    String userPassword = request.getParameter("userPassword");
    String userName = request.getParameter("userName");
    String userGender = request.getParameter("userGender");
    String userEmail = request.getParameter("userEmail");

    ProjectDto dto = new ProjectDto();
    dto.setUserID(userId);
    dto.setUserPassword(userPassword);
    dto.setUserName(userName);
    dto.setUserGender(userGender);
    dto.setUserEmail(userEmail);

    ProjectDao dao = new ProjectDao();
    dao.insertUser(dto);

    response.sendRedirect("main.jsp");
%>