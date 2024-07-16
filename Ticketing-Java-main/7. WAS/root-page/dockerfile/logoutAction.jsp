<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%
// 세션을 무효화하여 로그아웃 처리
session.invalidate();
// 로그아웃 후 홈페이지로 이동
response.sendRedirect("https://www.ticket-java.shop/");
%>
