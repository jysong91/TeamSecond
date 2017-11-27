<%@ page session="false" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <title>회원가입 페이지</title>
</head>
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
		var pw = $("#pw").val();
		if($("#pwMsg").val()!="")
			$("#pwMsg").html("<p style='color:blue'>안전한 비밀번호 입니다!!</p>");
	});
	//비번체크(비밀번호부분 focusout때도 실행해야)
	//비밀번호 검사
	$("#pwOk").focusout(function(){
		var pw = $("#pw").val();
		var pwOk = $("#pwOk").val();
		if(pw!=pwOk){
			$('#pwOkMsg').html("<p style='color:red'>비밀번호와 비밀번호 확인이 서로 다릅니다!!</p>")
		}else{
			$('#pwOkMsg').html("<p style='color:blue'>비밀번호와 비밀번호 확인이 같습니다!!</p>")
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
		if(authNum==""){
			$('#authMsg').html("<p style='color:red'>인증번호를 전송하세요!!</p>");
		}else{
			$.ajax({
				data:{authNum:authNum},
				type:"POST",
				url:"${home}member/authChkProc",
				success:function(data){
					if(data==0){
						$('#authMsg').html("<p style='color:blue'>인증 성공했습니다!!</p>");
					}else if(data==1){
						$('#authMsg').html("<p style='color:red'>인증 실패했습니다!!</p>");					
					}
				}
			});
		}
	});
	//회원가입 클릭 시 무엇이 누락되어 있는지 표시
	$("#frm").submit(function(){
		var id = $("#id").val();
		var pw = $("#pw").val();
		var email = $("#email").val();
		if(id=="" && pw=="" && email==""){
			$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
			$("#pwMsg").html("<p style='color:red'>비밀번호를 입력하세요!!</p>");
			$("#emailMsg").html("<p style='color:red'>이메일을 입력하세요!!</p>");
			return false;
		}else if(id=="" && pw=="" ){
			$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
			$("#pwMsg").html("<p style='color:red'>비밀번호를 입력하세요!!</p>");
			return false;
		}else if(id=="" && email=="" ){
			$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
			$("#emailMsg").html("<p style='color:red'>이메일을 입력하세요!!</p>");
			return false;
		}else if(pw=="" && email==""){
			$("#pwMsg").html("<p style='color:red'>비밀번호를 입력하세요!!</p>");
			$("#emailMsg").html("<p style='color:red'>이메일을 입력하세요!!</p>");
			return false;
		}else if(id==""){
			$("#idMsg").html("<p style='color:red'>아이디를 입력하세요!!</p>");
			return false;
		}else if(pw==""){
			$("#pwMsg").html("<p style='color:red'>비밀번호를 입력하세요!!</p>");
			return false;
		}else if(email==""){
			$("#emailMsg").html("<p style='color:red'>이메일을 입력하세요!!</p>");
			return false;
		}
		return true;
	});
});

</script>
<body>
<%--   <%@ include file="common/top.jsp" %> --%>
  <body>
  <div class="container">
  <br>
  	<div class="row justify-content-md-center">
    <div class="page-header">
      <h1>회원가입 </h1>
    </div>
    </div>
    <div class="row justify-content-md-center" >
    <div class="col-md-6 col-md-offset-3">
    <form id="frm" action="${home }member/memberProc" method="post">
        <div class="form-group"> <label for="id">아이디</label>
       <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요">
       <p id="idMsg"></p> </div>
        <div class="form-group"> <label for="pw">패스워드</label>
          <input type="password" class="form-control" id="pw" placeholder="비밀번호를 입력하세요"> 
         <p id="pwMsg"></p></div>
        <div class="form-group"> <label for="pwOk">패스워드 확인</label>
          <input type="password" class="form-control" id="pwOk" placeholder="비밀번호를 다시 한 번 입력하세요"> 
          <p id="pwOkMsg"></p></div>
        <div class="form-group"> <label for="email">Email</label>
          <div class="input-group">
            <input type="text" class="form-control" id="email" placeholder="이메일 주소를 입력하세요"> <span class="input-group-btn">
                  <button class="btn btn-success" id="authSendBtn">인증번호 확인</button>
                </span> <p id="emailMsg"></p></div>
       </div>
       
          <div class="form-group"> <label for="authNum">인증번호</label>
          <input type="text" class="form-control" id="authNum" placeholder="인증번호를 확인해주세요."> 
          <p id="authMsg"></p></div>
       
          <div class="form-group text-center">
          <button type="submit" class="btn btn-info">회원가입<i class="fa fa-check spaceLeft"></i></button>
          <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
          </div>
     </form>
     </div>
  </div>
</div>
</body>
</html>
