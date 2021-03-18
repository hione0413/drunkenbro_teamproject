<%@page import="com.drunkenbros.model.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>관리자 로그인 페이지</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/admin/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/admin/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/admin/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/admin/login/css/main.css">
<!--===============================================================================================-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
function findPass(){
	$.ajax({
		url:"/password/request",
		type:"get",
		data:{
			name:$("#name").val(),
			email:$("#email").val()
		},
		success:function(result){
			var json = JSON.parse(result);
			console.log(json);
			if(json.resultCode==0){
				alert("일치하는 정보가 없습니다.");
			}else if(json.resultCode==1){
				//location.href="/password/reset/page?id="+json.id+"&name="+json.name+"&member_id="+json.member_id;
				alert("비밀번호 재설정 링크를 메일로 보내드렸습니다.");
				location.href="/";
			}
		}
	});
}
</script>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(/admin/login/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						비밀번호 재설정
					</span>
				</div>

				<form class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">이름</span>
						<input class="input100" type="text" id="name" name="name" placeholder="Enter Your Name">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Email is required">
						<span class="label-input100">이메일</span>
						<input class="input100" type="text" id="email" name="email" placeholder="Enter Your Email">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button type="button" class="login100-form-btn" onclick="findPass()">
							비밀번호 찾기
						</button>
						<button type="button" class="login100-form-btn" onclick="javascript:history.back();">
							뒤로가기
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="/admin/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/admin/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/admin/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/admin/login/js/main.js"></script>

</body>
</html>