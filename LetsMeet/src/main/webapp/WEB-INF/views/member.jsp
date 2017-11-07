<%@ page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta charset="UTF-8">
    <title>약속장소잡기</title>
<c:url  var="home" value="/" />
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
/* ajax 회원가입 유효성 확인 예시
$(document).ready(function(){
	$("#id").keyup(function(){
		var inputed = $('#id').val();
		$.ajax({
	        data : { id : inputed },
	        type : "POST",
	        url : "/letsmeet/member/idChkProc",
	        success : function(data) {
	            if(inputed=="" && data=='0') {
	            	$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
	            } else if (data == '0') {
	            	$("#idMsg").html("<p style='color:blue'>사용 가능한 아이디입니다!!</p>");
	            } else if (data == '1') {
	            	$("#idMsg").html("<p style='color:red'>아이디가 중복됩니다!!</p>");
	            } 
	        } 
	    });
	});	
	//비번체크(비밀번호부분 focusout때도 실행해야)
	$("#pwOk").focusout(function(){
		var pw = $("#pw").val();
		var pwOk = $("#pwOk").val();
		if(pw!=pwOk){
			$('#pwMsg').html("<p style='color:red'>비밀번호와 비밀번호 확인이 서로 다릅니다!!</p>")
		}else{
			$("#pwMsg").html("<p style='color:blue'>안전한 비밀번호 입니다!!</p>");
		}
	});
	$("#authSendBtn").on("click", function(){
		var email = $("#email").val();
		if(validateEmail(email)){
			$.ajax({
				data:{email:email},
				type:"POST",
				url:"/letsmeet/member/idChkProc",
				success:function(data){
					alert(data);
					$('#authMsg').html("<p style='color:blue'>이메일에서 인증번호를 확인하세요!</p>");
				}
			});
		}else{
			$('#authMsg').text("정확한 이메일 주소를 입력하세요!");
			$('#authMsg').css("color", "red");
		}
	});
	function validateEmail(email) {
		  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		  return re.test(email);
		}

});
*/
</script>
<body>
</body>
</html>
