<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 세션에서 사용자명을 가져옵니다.
    String username = (String) session.getAttribute("username");
    if (username == null) {
        // 사용자명이 없으면 로그인 페이지로 이동합니다.
        response.sendRedirect("https://www.ticket-java.shop/login");
    } else {
        // 사용자 등록 정보를 가져옵니다. (예시로 하드코딩된 데이터 사용)
        String email = "user@example.com";
        String membershipLevel = "Nomal";

        // 사용자 등록 정보를 세션에 저장합니다.
        session.setAttribute("email", email);
        session.setAttribute("membershipLevel", membershipLevel);
    }
%>
<html>
<head>
    <title>마이페이지</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <style>
        /* 마이페이지 전용 스타일 */
        .user-info {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .user-info h2 {
            margin-bottom: 10px;
        }

        .user-info p {
            margin-bottom: 8px;
        }
        /* 티켓 자바 헤더 부분 스타일 */
        .title {
            font-size: 60px; /* 글자 크기 조정 */
            font-weight: bold; /* 글자 두께 조정 */
            color: #2c3e50; /* 글자 색상 */
            font-family: 'Jalnan2', sans-serif; /* 커스텀 폰트 패밀리 설정 */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 글자 그림자 효과 */
        }
         @font-face {
            font-family: 'Jalnan2';
            src: url('fonts/Jalnan2.otf') format('opentype'),
                 url('fonts/Jalnan2TTF.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }
        .title a {
            color: inherit; /* 부모 요소의 색상을 상속 */
            text-decoration: none; /* 밑줄 제거 */
        }

        .title a:hover {
            color: inherit; /* 부모 요소의 색상을 상속 */
            text-decoration: none; /* 밑줄 제거 */
        }
    </style>
</head>
<body>
    <header>
        <img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/ticket.png" alt="Interpark Logo" class="logo">
        <div class="title"><a href="https://www.ticket-java.shop/">티켓 자바</a></div>
        <div class="user-links">
            <a href="logoutAction.jsp">로그아웃</a>
        </div>
    </header>
    <nav>
        <ul>
            <li><a href="https://www.ticket-java.shop/">홈</a></li>
            <li><a href="https://www.ticket-java.shop/concert">콘서트</a></li>
            <li><a href="#">스포츠</a></li>
            <li><a href="#">전시/행사</a></li>
            <li><a href="#">컬렉션</a></li>
            <li><a href="#">더보기</a></li>
        </ul>
    </nav>
    <section class="user-info">
        <h2>사용자 정보</h2>
        <p><strong>사용자명:</strong> <%= session.getAttribute("username") %></p>
        <p><strong>이메일:</strong> <%= session.getAttribute("email") %></p>
        <p><strong>멤버십 레벨:</strong> <%= session.getAttribute("membershipLevel") %></p>
    </section>
    <footer>
        <p>Copyright © Ticket Java 2024</p>
    </footer>
</body>
</html>
