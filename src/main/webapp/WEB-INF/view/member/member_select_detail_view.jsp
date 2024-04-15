<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${empty sessionScope.member_id}">
	<script type="text/javascript">
        location.href="./LoginView.me"
    </script>
</c:if>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>컴퓨터 추천 사이트 회원가입</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/validity.js" type="text/javascript"></script>
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/bootstrap-datepicker.ko.js"></script>
<script type="text/javascript">
        function memberDelete() {
            if (confirm("${memberDTO.member_name}님 회원을 탈퇴 하시겠습니까?")) {
                location.href = "./MemberDelete.me?member_id=${memberDTO.member_id}"
            }
        }
    </script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-6">
				<h1>
					<i class="fas fa-users"></i> 회원 가입
				</h1>
			</div>
			<div id="toggle" class="navbar-collapse collapse">
				<ul class="navbar-nav">
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3"><c:if
							test="${!empty sessionScope.member_id}">
							<p class="nav-link dropdown-toggle" data-toggle="dropdown">
								<i class="fas fa-user mr-sm-1"></i> ${sessionScope.member_id} 님
							</p>
						</c:if> <c:choose>
							<c:when test="${empty sessionScope.member_id}">
								<li class="nav-item"><a href="./LoginView.me"
									class="nav-link"> <i class="fas fa-user-circle mr-sm-1"></i>
										로그인
								</a>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a href="./LoginView.me"
									class="nav-link"> <i class="fas fa-user-times mr-sm-1"></i>
										로그아웃
								</a>
							</c:otherwise>
						</c:choose>
				</ul>
				<ul class="navbar-nav py-3 mb-3 pl-3 pr-3">
					<li><a href="./index.jsp" class="navbar-brand"> <i
							class="fa fa-home"></i>홈
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<header id="main-header" class="py-2 bg-secondary"></header>
	<section class="py-3 mb-3 bg-light">
		<div class="container">
			<div class="row col-md-12"></div>
		</div>
	</section>
	<section id="member">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h3 class="text-muted">
								<i class="fas fa-user-shield mr-sm-1"></i> 회원 정보
							</h3>
						</div>
						<div class="card-body"></div>
						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fas fa-user-check mr-sm-1"></i> 아이디</li>
									<li class="list-group-item col-md-5">${memberDTO.member_id}</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fas fa-user-plus mr-sm-1"></i> 이름</li>
									<li class="list-group-item col-md-5">${memberDTO.member_name}</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fas fa-unlock-alt mr-sm-1"></i> 비밀번호</li>
									<li class="list-group-item col-md-5">${memberDTO.member_pw}</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fa fa-home mr-sm-1"></i> 주소</li>
									<li class="list-group-item col-md-5">${memberDTO.member_address}</li>
								</ul>
							</div>
						</div>
						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fa fa-phone mr-sm-1"></i> 번호</li>
									<li class="list-group-item col-md-5">${memberDTO.member_phone}</li>
								</ul>
							</div>
						</div>

						<div class="row">
							<div class="col-11">
								<ul class="list-group list-group-horizontal">
									<li class="list-group-item col-md-2"><i
										class="fas fa-envelope-open mr-sm-1"></i> 이메일</li>
									<li class="list-group-item col-md-5">${memberDTO.member_email}</li>
								</ul>
							</div>
						</div>
					</div>
					<nav class="navbar justify-content-end">
						<button type="button" class="btn btn-outline-secondary mr-sm-1"
							onclick="location.href='./MemberUpdate.me?member_id=${memberDTO.member_id}'">
							<i class="fas fa-user-tag mr-sm-1"></i> 회원 수정
						</button>
						<button type="button" class="btn btn-outline-danger mr-sm-1"
							onclick="memberDelete()">
							<i class="fas fa-user-times mr-sm-1"></i> 회원 탈퇴
						</button>
						<c:if test="${sessionScope.member_id == 'admin'}">
							<button type="button" class="btn btn-outline-success mr-sm-1"
								onclick="location.href='./MemberSelect.me'">
								<i class="fas fa-users-cog mr-sm-1"></i> 회원 목록
							</button>
						</c:if>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<footer id="main-footer" class="bg-secondary text-white mt-3 p-3">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="lead text-center"></p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
