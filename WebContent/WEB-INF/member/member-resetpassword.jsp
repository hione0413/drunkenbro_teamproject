<%@page import="com.drunkenbros.model.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Member member = (Member)request.getAttribute("member");
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>비밀번호 변경</title>
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
function resetPass(){
	$.ajax({
		url:"/password/reset",
		type:"post",
		data:{
			member_id:$("input[name='member_id']").val(),
			id:$("input[name='id']").val(),
			pass:$("input[name='pass']").val()
		},
		success:function(result){
			var json = JSON.parse(result);
			console.log(json);
			
			if(json.resultCode==0){
				alert("비밀번호 변경에 실패했습니다.");
			}else if(json.resultCode==1){
				alert("비밀번호 변경 완료!");
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
					<div class="wrap-input100 validate-input m-b-26">
						<span class="label-input100">ID</span>
						<input type="hidden" name="member_id" value="<%=member.getMember_id()%>">
						<input class="input100" type="text" name="id" readonly="readonly" value="<%=member.getId()%>">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "New Password is required">
						<span class="label-input100">PASS</span>
						<input class="input100" type="text" name="pass" placeholder="Enter New Password">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button type="button" class="login100-form-btn" onclick="resetPass()">
							비밀번호 변경
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