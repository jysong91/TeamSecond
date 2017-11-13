<%@ page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta charset="UTF-8">
    <title>약속장소잡기 회원가입</title>
<c:url  var="home" value="/" />
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
/* ajax 회원가입 유효성 확인 예시*/
// 아이디 중복확인
$(document).ready(function(){
	$("#id").blur(function(){
		var inputed = $('#id').val();
		$.ajax({
	        data : {id:inputed},
	        type : "POST",
	        url : "${home}member/idChkProc",
	        success : function(data) {
	            if(inputed=="" && data==0) {
	            	$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
	            } else if (data == 0) {
	            	$("#idMsg").html("<p style='color:blue'>사용 가능한 아이디입니다!!</p>");
	            } else if (data == 1) {
	            	$("#idMsg").html("<p style='color:red'>아이디가 중복됩니다!!</p>");
	            } 
	        } 
	    });
	});	
	//비밀번호 안전한지 체크
	$("#pw").focusout(function(){
		$("#pwMsg").html("<p style='color:blue'>안전한 비밀번호 입니다!!</p>");
	});
	//비번체크(비밀번호부분 focusout때도 실행해야)
	//비밀번호 검사
	$("#pwOk").focusout(function(){
		var pw = $("#pw").val();
		var pwOk = $("#pwOk").val();
		$("#pwMsg").html("<p style='color:blue'>안전한 비밀번호 입니다!!</p>");
		if(pw!=pwOk){
			$('#pwOkMsg').html("<p style='color:red'>비밀번호와 비밀번호 확인이 서로 다릅니다!!</p>")
		}else{
			$('#pwOkMsg').html("<p style='color:red'>비밀번호와 비밀번호 확인이 같습니다!!</p>")
		}
	});
	//이메일 체크
	$("#email").blur(function(){
		var email = $("#email").val();
		if(validateEmail(email)){
			$("#emailMsg").html("<p style='color:blue'>이메일 사용 할 수 있습니다</p>");
			//인증번호 보내기
			$("#authSendBtn").click(function(){
				var email = $("#email").val();
				$.ajax({
					data:{email:email},
					type:"POST",
					url:"${home}member/authSendProc",
					success:function(data){
						alert(data);
						$('#emailMsg').html("<p style='color:blue'>이메일에서 인증번호를 확인하세요!</p>");
					}
				});
			});
		}else{
			$("#emailMsg").html("<p style='color:red'>이메일 사용 할 수 없습니다</p>");
		}
	});
	
	//이메일 유효성 검사
	function validateEmail(email){
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(email);
	}
	
	//인증번호 검사
	$("#authNum").blur(function(){
		var authNum = $("#authNum").val();
		$.ajax({
			data:{authNum:authNum},
			type:"POST",
			url:"${home}member/authChkProc",
			success:function(data){
				if(data==0){
					$('#authMsg').html("<p style='color:blue'>인증성공</p>");
				}else if(data==1){
					$('#authMsg').html("<p style='color:red'>인증실패</p>");					
				}
			}
		});
	});
});

</script>
<body>
<form action="${home }member/memberProc" method="post">
<table>
	<tr>
		<td align='right' height=40 >아이디</td>
		<td>
			<input type="text" name="id" id="id" placeholder='id 입력'/> 
		</td>
		<td><p id="idMsg"></p></td>
	</tr>
	<tr>
		<td align='right' height=40>패스워드</td>
		<td>
			<input type="password" name='pw' id="pw" placeholder='pw 입력'/> 
		</td>
		<td><p id="pwMsg"></p></td>
	</tr>
	
	<tr>
		<td align='right'>패스워드 확인</td>
		<td>
			<input type="password" name='pwOk' id="pwOk" placeholder='pw 입력'/> 
		</td>
		<td><p id="pwOkMsg"></p></td>
	</tr>
	<tr>
		<td align='right' height=40>E-Mail</td>
		<td>
			<input type="text" name='email' id="email" placeholder='E-Mail 입력'/> 
		</td>
		<td colspan="2"><input type="button" id="authSendBtn" value="인증번호 받기"/></td>
		<td><p id="emailMsg"></p></td>
	</tr>
	<tr>
		<td align='right'>인증번호</td>
		<td>
			<input type="text" name='authNum' id="authNum" placeholder='인증번호 입력'/> 
		</td>
		<td><p id="authMsg"></p></td>
	</tr>
	<tr>
		<td><input type="submit" value="회원가입"></td>
	</tr>
</table>
</form>
</body>
</html>
