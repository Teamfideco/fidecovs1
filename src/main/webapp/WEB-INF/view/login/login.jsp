<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<style>
body {
	font-family: 'Noto Sans', sans-serif;
	background-color: #f4f7f6;
	margin: 0;
	padding: 20px;
}

h4 {
	color: #333;
	text-align: center;
	margin-bottom: 24px;
	font-size: 24px;
}

.card {
	background-color: #ffffff;
	padding: 24px;
	border-radius: 12px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
	max-width: 800px;
	margin: auto;
}

.form-group {
	margin-bottom: 24px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: #333;
}

input[type="text"], input[type="password"] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

.custom-control {
	margin-top: 16px;
}

.btn-info {
	background-color: #546E7A;
	color: white;
	border: none;
	border-radius: 4px;
	padding: 12px;
	cursor: pointer;
	width: 100%;
	transition: background-color 0.3s ease;
}

.btn-info:hover {
	background-color: #455A64;
}

.btn-outline-success, .btn-outline-warning, .btn-outline-info {
	border-color: #546E7A;
	color: #546E7A;
	background-color: transparent;
	border-radius: 4px;
	padding: 12px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

.btn-outline-success:hover, .btn-outline-warning:hover,
	.btn-outline-info:hover {
	background-color: #546E7A;
	color: white;
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
	<h4>ID 로그인</h4>
	<div class="card">
		<form action="./Login.me" method="post" id="signupForm"
			enctype="application/x-www-form-urlencoded">
			<div class="form-group">
				<label for="member_id"><i class="fas fa-user-check mr-sm-1"></i>아이디</label>
				<input type="text" name="member_id" id="member_id"
					class="form-control" placeholder="아이디">
			</div>
			<div class="form-group">
				<label for="member_pw"><i class="fas fa-user-lock mr-sm-1"></i>비밀번호</label>
				<input type="password" name="member_pw" id="member_pw"
					class="form-control" placeholder="비밀번호">
			</div>
			<div class="form-group">
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="save" class="custom-control-input"
						id="save"> <label class="custom-control-label" for="save">로그인
						상태 유지</label>
				</div>
			</div>
			<button type="submit" id="register" class="btn btn-info">로그인</button>
		</form>
	</div>
	<div class="col-9 mx-auto py-3 mb-3">
		<span>
			<button type="button" class="btn btn-outline-success"
				onclick="location.href='./IdSearchView.me'">
				<i class="fas fa-user-check mr-sm-1"></i>아이디 찾기
			</button>
		</span> <span>
			<button type="button" class="btn btn-outline-warning"
				onclick="location.href='./PasswordSearchView.me'">
				<i class="fas fa-user-lock mr-sm-1"></i>비밀번호 찾기
			</button>
		</span> <span>
			<button type="button" class="btn btn-outline-info"
				onclick="location.href='./MemberInsertView.me'">
				<i class="fas fa-user-plus mr-sm-1"></i>회원 가입
			</button>
		</span>
	</div>
	<footer class="footer"> © 2024 컴퓨터 추천 사이트 FiDeCo All rights
		reserved. </footer>
</body>
</html>
