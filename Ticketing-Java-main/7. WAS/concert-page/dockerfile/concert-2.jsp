<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C-1 CONCERT - Interpark Tickets</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f4;
        }
        header {
            background-color: #ffffff;
            padding: 10px 20px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .logo {
            width: 100px;
        }
        .user-links a {
            text-decoration: none;
            color: #333;
            padding: 8px 15px;
            margin-left: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .user-links a:hover {
            background-color: #f2f2f2;
        }
        nav ul {
            list-style: none;
            background-color: #333;
            text-align: center;
            padding: 0;
            margin: 0;
        }
        nav ul li {
            display: inline;
        }
        nav ul li a {
            text-decoration: none;
            color: white;
            padding: 15px 20px;
            display: inline-block;
        }
        .banner img {
            width: 100%;
            display: block;
        }
        .concert-details {
            padding: 20px;
            background-color: white;
            margin: 20px auto;
            width: 80%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: white;
        }
        .confirmation {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            display: none;
            z-index: 9999;
        }
        .confirmation p {
            text-align: center;
            font-size: 20px;
            color: #333;
        }
        .confirmation.active {
            display: block;
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
            <% if (session.getAttribute("username") == null) { %>
                <a href="https://www.ticket-java.shop/login">로그인</a>
                <a href="register.jsp">회원가입</a>
            <% } else { %>
                <a href="logoutAction.jsp">로그아웃</a>
                <a href="myPage.jsp">마이페이지</a>
            <% } %>
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
    <div class="concert-details">
        <img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/partyplenty.jpg" alt="C-2 CONCERT">
        <h1>2024 PEPPERTONES CONCERT 〈Party Plenty〉 in 서울 </h1>
        <p>장소: 명화 라이브홀</p>
        <p>일정: 2024.06.18 ~ 2024.06.19</p>
        <p>공연시간: 120분</p>
        <p>가격: VIP₩121,000 | R₩89,000 | S₩69,000</p>
        <button onclick="showConfirmation()">예매하기</button>
    </div>
    <footer>
        Ticket Java &copy; 2024
    </footer>
    <div class="confirmation" id="confirmation">
        <p id="confirmationMessage"></p>
    </div>
    <script>
        function showConfirmation() {
            var confirmation = document.getElementById("confirmation");
            confirmation.classList.toggle("active");

            // 랜덤 좌석 번호 생성
            var seatNumber = Math.floor(Math.random() * 100) + 1; // 1부터 100까지의 랜덤 숫자
            var message = "예매가 완료되었습니다. 좌석 번호: " + seatNumber;

            // 예매번호 생성
            var bookingNumber = Math.random().toString(36).substr(2, 9); // 랜덤한 9자리 문자열
            message += "<br>예매 번호: " + bookingNumber;

            document.getElementById("confirmationMessage").innerHTML = message;

            setTimeout(function() {
                confirmation.classList.toggle("active");
            }, 3000); // 3초 후에 알림을 숨김
        }
    </script>
</body>
</html>
