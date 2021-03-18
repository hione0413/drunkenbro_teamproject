<%@page import="com.drunkenbros.model.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Member member = (Member)session.getAttribute("member");
	String reviewTitle = (String)request.getAttribute("reviewTitle");
	String alcoholName = (String)request.getAttribute("alcoholName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 신고</title>
<style>
div{
	width:400px;
	height:300px;
}
#contents{
	width:300px;
	height:100px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
function report(){
	$.ajax({
		url:"/report/send",
		type:"post",
		data:{
			alcoholName:$("input[name='alcoholName']").val(),
			reviewTitle:$("input[name='reviewTitle']").val(),
			id:$("input[name='id']").val(),
			content:$("textarea[name='content']").val()
		},
		success:function(result){
			var json = JSON.parse(result);

			if(json.resultCode==0){
				alert("신고 접수가 정상적으로 이루어지지 않았습니다.");
			}else{
				alert("신고가 정상적으로 접수 되었습니다.");
			}
		}
	});
}
</script>
</head>
<body>
<div>
	<label>신고 내용을 작성해주세요.</label><br><br>
	<textarea rows="5" cols="40" placeholder="내용을 입력해주세요." name="content"></textarea><br><br>
	<input type="hidden" value="<%=alcoholName%>" name="alcoholName">
	<input type="hidden" value="<%=reviewTitle%>" name="reviewTitle">
	<input type="hidden" value="<%=member.getId()%>" name="id">
	<input type="button" value="신고 전송" onclick="report()">
</div>
</body>
</html>