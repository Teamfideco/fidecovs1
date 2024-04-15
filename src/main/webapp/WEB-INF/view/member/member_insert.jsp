<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%session.removeAttribute("member_id"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>컴퓨터 추천 사이트 회원가입</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/global.css">
<link rel="stylesheet" type="text/css" href="./css/all.min.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<link rel="stylesheet" href="./css/bootstrap-datepicker.css">
<link rel="stylesheet" type="text/css" href="./css/custom.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/popper.min.js" type="text/javascript"></script>
<script src="./js/jquery.validate.min.js" type="text/javascript"></script>
<script src="./js/validity.js" type="text/javascript"></script>
<script src="./js/bootstrap-datepicker.js"></script>
<script src="./js/bootstrap-datepicker.ko.js"></script>
<script type="text/javascript">
    $(function() {
        $("#signupForm").submit(function() {
            var password = $("#member_pw").val();
            var confirmPassword = $("#pwdre").val();
            if (password !== confirmPassword) {
                alert("비밀번호와 비밀번호 확인 값이 일치하지 않습니다.");
                return false; // 폼 제출 중단
            }
        });
        
        $("#dbidCheck").click(function() {
            var member_id = $('#member_id').val();
            $.ajax({
                url : './IdCheck.me',
                type : 'get',
                data : {
                    member_id : member_id
                },
                success : function(result) {
                    console.log("아이디 값 - " + result);
                    if ($.trim(result) == 1) {
                        alert("이미 등록된 아이디입니다.");
                        $("#member_id").focus();
                    } else {
                        alert("등록할 수 있는 아이디입니다.");
                        $('#idCheck').val("1");
                        $("#member_name").focus();
                    }
                }
            });
        });
        
        $("input[member_id='member_id']").on("change", function() {
            $("#idCheck").val(0);
        });
    });
</script>
<style>
/* Global Styles */
body {
    font-family: Arial, sans-serif;
}

.container {
    max-width: 960px;
    margin: 0 auto;
}

/* Navbar Styles */
.navbar {
    background-color: #343a40 !important;
}

.navbar-brand,
.navbar-nav .nav-link {
    color: #ffffff !important;
}

.navbar-brand:hover,
.navbar-nav .nav-link:hover {
    color: #ffffff !important;
}

/* Card Styles */
.card {
    border: none;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.card-header {
    background-color: #007bff;
    border-radius: 10px 10px 0 0;
}

.card-header h3 {
    color: #ffffff;
}

.card-body {
    padding: 30px;
}

/* Form Styles */
.form-group {
    margin-bottom: 20px;
}

.form-control {
    border: 1px solid #ced4da;
    border-radius: 5px;
}

.btn-outline-primary {
    border-color: #007bff;
    color: #007bff;
}

.btn-outline-primary:hover {
    background-color: #007bff;
    color: #ffffff;
}

.btn-outline-warning {
    border-color: #ffc107;
    color: #ffc107;
}

.btn-outline-warning:hover {
    background-color: #ffc107;
    color: #ffffff;
}
</style>
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
                    <li class="nav-item dropdown mr-3">
                    <li class="nav-item"><a href="./LoginView.me" class="nav-link">
                            <i class="fas fa-user-circle mr-sm-1"></i> 로그인
                    </a></li>
                </ul>
                <ul class="navbar-nav py-2 mb-2 pl-3 pr-3">
                    <li><a href="./index.jsp" class="navbar-brand"> <i
                            class="fa fa-home"></i>홈
                    </a></li>
                </ul>
            </div>
        </div>
    </nav>
    <header id="main-header" class="py-2 bg-secondary"> </header>
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
                                <i class="fas fa-user-edit mr-sm-1"></i> 회원 등록
                            </h3>
                        </div>
                        <div class="card-body">
                            <form action="./MemberInsert.me" method="post" id="signupForm"
                                class="" enctype="application/x-www-form-urlencoded">
                                <fieldset>
                                    <div class="row pl-1 pr-1">
                                        <div class="col col-md-5">
                                            <div class="form-group row">
                                                <label for="member_id" class="col-4 col-form-label pr-0"> <i
                                                    class="fas fa-user-check mr-sm-1"></i> 아이디
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <div class="row">
                                                        <div class="col-7">
                                                            <input type="text" name="member_id" id="member_id" class="form-control">
                                                        </div>
                                                        <div class="pl-0">
                                                            <button type="button" class="btn btn-outline-secondary"
                                                                id="dbidCheck">중복체크</button>
                                                            <input type="hidden" name="idCheck" id="idCheck">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_name" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-user-plus mr-sm-1"></i> 이름
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="text" name="member_name" id="member_name"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_pw" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-unlock-alt mr-sm-1"></i> 비밀번호
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="password" name="member_pw" id="member_pw"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="pwdre" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-lock mr-sm-1"></i> 비번확인
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="password" name="pwdre" id="pwdre"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_email" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-envelope-open mr-sm-1"></i> 이메일
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="email" name="member_email" id="member_email"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_address" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-map-marker-alt mr-sm-1"></i> 주소
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="text" name="member_address" id="member_address"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_phone" class="col-4 col-form-label pr-0">
                                                    <i class="fas fa-phone mr-sm-1"></i> 휴대폰 번호
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="text" name="member_phone" id="member_phone"
                                                        class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="member_auth"
                                                    class="col-4 col-form-check-label pr-0"> <i
                                                    class="fas fa-envelope-open-text mr-sm-1"></i> 이메일 인증
                                                </label>
                                                <div class="col-8 pl-0">
                                                    <input type="text" name="member_auth" id="member_auth"
                                                        class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <nav class="navbar justify-content-end">
                                        <button type="submit" class="btn btn-outline-primary mr-sm-1">
                                            <i class="fas fa-save mr-sm-1"></i> 회원 등록
                                        </button>
                                        <button type="reset" id="clear"
                                            class="btn btn-outline-warning mr-sm-1">
                                            <i class="fas fa-share-square mr-sm-1"></i> 등록 취소
                                        </button>
                                    </nav>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer id="main-footer" class="bg-secondary text-white mt-3 p-3">
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="lead text-center">
                         컴퓨터 추천사이트 회원가입
                        &copy; 2000
                    </p>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
