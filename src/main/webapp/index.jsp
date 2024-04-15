<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입을 해보던가</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: none;
            color: white;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
        .btn-outline-light {
            border-color: #fff;
            color: #fff;
            border-width: 2px;
            background-color: transparent;
        }
        .btn-outline-light:hover {
            background-color: #fff;
            color: #667eea;
        }
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            color: white;
            text-align: center;
            padding: 10px;
            background: transparent;
        }
    </style>
</head>
<body>

<div class="container text-center">
    <div class="row">
        <div class="col">
            <div class="card">
                <h3>회원 가입</h3>
                <h4 class="display-4">
                    <i class="fas fa-users"></i>
                </h4>
                <button type="button" class="btn btn-outline-light btn-sm" onclick="location.href='MemberInsertView.me'">회원가입</button>
            </div>
        
        </div>
        <div class="col">
            <div class="card">
                <h3>로그인</h3>
                <h4 class="display-4">
                    <i class="fas fa-user"></i>
                </h4>
                <button type="button" class="btn btn-outline-light btn-sm" onclick="location.href='LoginView.me'">로그인</button>
            </div>
        </div>
    </div>
    <p>아이디가 없으신 분은 회원가입 후 이용하실 수 있습니다.</p>
</div>

<footer class="footer">
    © 2024 컴퓨터 추천 사이트 FiDeCo All rights reserved.
</footer>

</body>
</html>
