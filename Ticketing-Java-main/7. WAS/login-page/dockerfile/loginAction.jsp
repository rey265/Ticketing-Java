<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%

String url = "jdbc:mariadb://tjv-prd-vpc-rds.c5uyegu2majx.ap-northeast-2.rds.amazonaws.com:3306/ticket_java"; // 데이터베이스 URL
String username = "admin"; // 데이터베이스 사용자 이름
String password = "password"; // 데이터베이스 비밀번호

String inputUsername = request.getParameter("username");
String inputPassword = request.getParameter("password");

Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

try {
    Class.forName("org.mariadb.jdbc.Driver");
    conn = DriverManager.getConnection(url, username, password);
    String sql = "SELECT * FROM register WHERE username = ? AND password = ?";
    stmt = conn.prepareStatement(sql);
    stmt.setString(1, inputUsername);
    stmt.setString(2, inputPassword);
    rs = stmt.executeQuery();

    if (rs.next()) {
        // 로그인 성공
        // 세션에 사용자 정보 저장
        HttpSession sessionObj = request.getSession();
        sessionObj.setAttribute("username", inputUsername);
        // 로그인 후 이동할 페이지로 리다이렉트
        response.sendRedirect("https://www.ticket-java.shop/");
    } else {
        // 로그인 실패
        // 실패 메시지 출력 및 로그인 페이지로 이동
        out.println("<script>alert('로그인에 실패하였습니다. 다시 시도해주세요.');</script>");
        response.sendRedirect("https://www.ticket-java.shop/login");
    }
} catch (SQLException | ClassNotFoundException e) {
    e.printStackTrace();
} finally {
    if (rs != null) {
        try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
    if (stmt != null) {
        try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
    if (conn != null) {
        try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
}

%>
