<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <style>
        /* 회원가입 전용 스타일 */
        .register-form {
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px; /* 폼의 너비 조정 */
        }

        .register-form h2 {
            margin-bottom: 10px;
            font-family: 'Jalnan2', sans-serif; /* Jalnan2 폰트 사용 */
        }

        .register-form form {
            display: flex;
            flex-direction: column;
        }

        .register-form label {
            margin-bottom: 8px;
        }

        .register-form input[type="text"],
        .register-form input[type="password"] {
            padding: 10px;
            margin-bottom: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .register-form input[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .register-form input[type="submit"]:hover {
            background-color: #555;
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
            <a href="https://www.ticket-java.shop/login">로그인</a>
            <a href="register.jsp">회원가입</a>
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
    <section class="register-form">
        <h2>회원가입</h2>
        <form action="registerAction.jsp" method="POST">
            <label for="username">아이디:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>

            <label for="address">주소:</label>
            <input type="text" id="address" name="address" required>

            <label for="phone">핸드폰번호:</label>
            <input type="text" id="phone" name="phone" required>

            <input type="submit" value="가입하기">
        </form>
    </section>
    <footer>
        <p>Copyright © Ticket Java 2024</p>
    </footer>
</body>
</html>

