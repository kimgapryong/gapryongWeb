<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
    <%
        // UTF-8 인코딩 설정
        request.setCharacterEncoding("UTF-8");

        // 사용자로부터 전달받은 id와 pw
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        // 데이터베이스 연결 정보
        String url = "jdbc:oracle:thin:@localhost:1521:xe";
        String user = "C##dbexam";
        String password = "m1234";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String moneyValue = null;

        try {
   
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, user, password);

            String memberQuery = "SELECT * FROM member WHERE id=? AND password=?";
            pstmt = conn.prepareStatement(memberQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, pw);
            rs = pstmt.executeQuery();

            if (rs.next()) {
 
                session.setAttribute("sessionId", id);

                String moneyQuery = "SELECT value FROM moneyValue WHERE id=?";
                pstmt = conn.prepareStatement(moneyQuery);
                pstmt.setString(1, id);
                rs = pstmt.executeQuery();

                if (rs.next()) {
                    moneyValue = rs.getString("value"); // 'value' 컬럼 값 가져오기
                    session.setAttribute("money", moneyValue); // 세션에 money 값 저장
                }

                // 로그인 후 이동할 페이지로 리다이렉트
                response.sendRedirect("../step06/index.jsp");
            } else {
                // 로그인 실패 시
                response.sendRedirect("loginMember.jsp?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("데이터베이스 연결 실패: " + e.getMessage());
        } finally {
            // 자원 해제
            try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (pstmt != null) pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
            try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
    %>
</body>
</html>
