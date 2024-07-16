<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Interpark Tickets</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <style>
        @font-face {
            font-family: 'Jalnan2';
            src: url('fonts/Jalnan2.otf') format('opentype'),
                 url('fonts/Jalnan2TTF.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background-color: #f8f8f8;
            border-bottom: 1px solid #ddd;
        }

        .logo {
            height: 50px;
        }

        .title {
            font-size: 60px; /* 글자 크기 조정 */
            font-weight: bold; /* 글자 두께 조정 */
            color: #2c3e50; /* 글자 색상 */
            font-family: 'Jalnan2', sans-serif; /* 커스텀 폰트 패밀리 설정 */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2); /* 글자 그림자 효과 */
            text-align: center;
        }

        .title a {
            color: inherit; /* 부모 요소의 색상을 상속 */
            text-decoration: none; /* 밑줄 제거 */
        }

        .title a:hover {
            color: inherit; /* 부모 요소의 색상을 상속 */
            text-decoration: none; /* 밑줄 제거 */
        }

        .user-links {
            display: flex;
            gap: 10px;
        }

        .user-links a {
            text-decoration: none;
            color: #2c3e50;
            padding: 5px 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
        }

        .user-links a:hover {
            background-color: #f0f0f0;
        }

        nav ul {
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 10px 0;
            margin: 0;
            background-color: #333;
            color: white;
        }

        nav ul li {
            margin: 0 10px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            display: block;
        }

        nav ul li a:hover {
            background-color: #555;
        }

        .banner-container {
            width: 40%;
            max-width: 1200px;
            margin: 20px auto;
            overflow: hidden;
            position: relative;
        }

        .swiper-container {
            width: 100%;
            height: 100%;
        }

        .swiper-slide img {
            width: 100%;
            display: block;
        }

        .swiper-button-next, .swiper-button-prev {
            position: absolute;
            bottom: 10px; /* 버튼을 배너의 아래쪽에 배치 */
            width: auto;
            height: auto;
            padding: 10px;
            margin-top: 0;
            z-index: 10;
        }

        .swiper-button-next {
            right: 10px; /* 오른쪽 버튼 위치 조정 */
        }

        .swiper-button-prev {
            left: 10px; /* 왼쪽 버튼 위치 조정 */
        }

        .sold-out-message {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 20px;
            border-radius: 5px;
            z-index: 1000;
        }
    </style>
</head>
<body>
    <header>
        <img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/ticket.png" alt="Interpark Logo" class="logo">
        <div class="title"><a href="https://www.ticket-java.shop/">티켓 자바</a></div>
        <div class="user-links">
            <%-- 세션이 있을 때는 로그아웃 링크와 마이페이지 링크를 표시 --%>
            <% if (session.getAttribute("username") != null) { %>
                <a href="logoutAction.jsp">로그아웃</a>
                <a href="myPage.jsp">마이페이지</a>
            <% } else { %>
                <%-- 세션이 없을 때는 로그인과 회원가입 링크를 표시 --%>
                <a href="https://www.ticket-java.shop/login">로그인</a>
                <a href="register.jsp">회원가입</a>
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
    <div class="banner-container">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <!-- 슬라이드 항목들 -->
                <div class="swiper-slide"><a href="concert-1.jsp"><img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/iu_1.png" alt="슬라이드 1"></a></div>
                <div class="swiper-slide"><a href="concert-2.jsp"><img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/partyplenty.jpg" alt="슬라이드 2"></a></div>
                <div class="swiper-slide" id="sold-out-slide"><img src="https://tjv-s3-bucket.s3.ap-northeast-2.amazonaws.com/uv.jpg" alt="슬라이드 3"></div>
                <!-- 추가 슬라이드 항목들 -->
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
            <!-- Add Navigation -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>
    <div class="sold-out-message" id="sold-out-message" style="display: none;">이미 매진된 콘서트입니다.</div>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 1,
            spaceBetween: 30,
            loop: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        document.getElementById('sold-out-slide').addEventListener('click', function() {
            document.getElementById('sold-out-message').style.display = 'block';
            setTimeout(function() {
                document.getElementById('sold-out-message').style.display = 'none';
            }, 3000); // 3초 후에 토글을 다시 숨김
        });
    </script>
</body>
</html>
