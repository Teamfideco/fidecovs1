<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${empty sessionScope.member_id}">
	<script type="text/javascript">
		location.href = "./LoginView.me"
	</script>
</c:if>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>컴퓨터 추천 사이트 메인 화면</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark text-white">
		<div class="container">
			<div class="col-md-6">
				<h1>
					<i class="fas fa-user-tag"></i>
				</h1>
			</div>
			<div id="toggle" class="navbar-collapse collapse">
				<ul class="navbar-nav">
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item dropdown mr-3"><c:if
							test="${!empty sessionScope.member_id}">
							<p class="nav-link dropdown-toggle" data-toggle="dropdown">
								<i class="fas fa-user mr-sm-1"></i> ${sessionScope.member_name}
								님
							</p>
						</c:if>
						<div class="dropdown-menu">
							<c:choose>
								<c:when test="${!empty sessionScope.member_id}">
									<a class="dropdown-item"
										href="./MemberSelectDetail.me?member_id=${sessionScope.member_id}">
										<i class="fas fa-user-shield"></i> 회원 정보
									</a>
								</c:when>
							</c:choose>
						</div> <c:choose>
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
					<li><a href="./Mypage.me"
						class="navbar-brand text-white"> <i class="fa fa-home"></i>마이페이지
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-3">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<a href="./NoticeBoard.me" class="btn btn-primary btn-block">공지사항
					게시판 </a>
				<a href="./ReviewBoard.me" class="btn btn-primary btn-block">구매후기
					게시판 </a>
				<a href="./ProductList.me" class="btn btn-primary btn-block">상품
					목록 </a>
				<a href="./OrderHistory.me" class="btn btn-primary btn-block">주문내역
					</a>
				<a href="./DeliveryHistory.me" class="btn btn-primary btn-block">배송내역
					</a>
				<a href="./Payment.me" class="btn btn-primary btn-block">결제
					진행하기</a>
			</div>
		</div>
	</div>

	<footer id="main-footer" class="bg-secondary text-white mt-3 p-3">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="lead text-center">로그인 메인화면</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>