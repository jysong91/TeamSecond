<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<c:set var="scoreNums" >1,2,3,4,5</c:set>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${res }css/icon.css" type="text/css">
  <title>리뷰 대응페이지</title>
  <script src="${res}js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var loginMsg = "${loginMsg}";
	if(loginMsg!=""){
		alert(loginMsg);
	}
});
</script>
<script type="text/javascript">
	$(document).ready(function(){	
		
		var array =[
				{name : '나쁨'},
				{name : '별로'},
				{name : '보통'},
				{name : '좋음'},
				{name : '매우좋음'}];
		
		
	 	var log=false;
		//여행자유형
		$("#typeBtn1").click(function(){
			log=!log;
			$("#typeBtn1").css("background-color","yellow");
			$("#typeBtn2").css("background-color","white");
			$("#typeBtn3").css("background-color","white");
			$("#typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($("#typeBtn1").val());
		});
			
		$("#typeBtn2").click(function(){
			log=!log;
			$("#typeBtn1").css("background-color","white");
			$("#typeBtn2").css("background-color","yellow");
			$("#typeBtn3").css("background-color","white");
			$("#typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($("#typeBtn2").val());
		});		
		
		$("#typeBtn3").click(function(){
			log=!log;
			$("#typeBtn1").css("background-color","white");
			$("#typeBtn2").css("background-color","white");
			$("#typeBtn3").css("background-color","yellow");
			$("#typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($("#typeBtn3").val());
		});		
		
		$("#typeBtn4").click(function(){
			log=!log;
			$("#typeBtn1").css("background-color","white");
			$("#typeBtn2").css("background-color","white");
			$("#typeBtn3").css("background-color","white");
			$("#typeBtn4").css("background-color","yellow");
			$("#reviewMemberType").val($("#typeBtn4").val());	
		});			
		//별점
		//전반적인 평가
		$( "#reviewAppraisalStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
			 $.each(array, function(index, item){		
			     if($(this).addClass("on").attr("id")==index+1){
					 $("#reviewAppraisalMsg").html("<p>"+item.name+"<p>");
				 } 
			  }); 	 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					 //여기 this는 function(item)의 item을 나타낸다.   
					 if($(this).attr("id")=='1')	{
						 $("#reviewAppraisalMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#reviewAppraisalMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#reviewAppraisalMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#reviewAppraisalMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#reviewAppraisalMsg").html("<p>아주좋음</p>");
					 }
					 $("#reviewAppraisal").val($(this).attr("id")); 
					 $( "#reviewAppraisalStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $("#reviewAppraisalStar a").mouseleave(function(){
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#reviewAppraisalMsg").html("");
			     }); 
		     }
		 });
		//서비스
		$( "#serviceStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
		     $(this).each(function(item){}); 	
			 //여기 this는 function(item)의 item을 나타낸다.
			 if($(this).attr("id")=='1'){
				 $("#serviceMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#serviceMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#serviceMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#serviceMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#serviceMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					 if($(this).attr("id")=='1'){
						 $("#serviceMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#serviceMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#serviceMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#serviceMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#serviceMsg").html("<p>아주좋음</p>");
					 }
					 $("#serviceScore").val($(this).attr("id")); 
					 $( "#serviceStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $("#serviceStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#serviceMsg").html("");
			     }); 
			}
		});
		//맛
		$( "#tasteStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
			 if($(this).attr("id")=='1'){
				 $("#tasteMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#tasteMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#tasteMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#tasteMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#tasteMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					 if($(this).attr("id")=='1'){
						 $("#tasteMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#tasteMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#tasteMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#tasteMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#tasteMsg").html("<p>아주좋음</p>");
					 }
					 $("#tasteScore").val($(this).attr("id")); 
					 $( "#tasteStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $("#tasteStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#tasteMsg").html("");
			     }); 
			}
		});
		
		//분위기
		$( "#moodStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
			 if($(this).attr("id")=='1'){
				 $("#moodMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#moodMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#moodMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#moodMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#moodMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on"); 
					 if($(this).attr("id")=='1'){
						 $("#moodMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#moodMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#moodMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#moodMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#moodMsg").html("<p>아주좋음</p>");
					 }
					 $("#moodScore").val($(this).attr("id")); 
					 $( "#moodStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $("#moodStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#moodMsg").html("");
			     }); 
			}
		});
		
		$("#frm").submit(function(data){
			if(data==0){
				history.back();
			}
		});
	});
</script>
  <style type="text/css">
    .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  	}
  	.modal-footer {
      background-color: #f9f9f9;
  	}
  	.modal-backdrop{
    	opacity:0.5 !important;
	}
	.peopleCarouselImg img {
	  width: auto;
	  height: 400px;
	  max-height: 400px;
	}
  </style>
</head>
<body>
  <%@ include file="common/top.jsp" %>
	 <!--modal end -->
	 
  <div class="container">
  <div class="bg-faded p-4 my-4">
  <!-- Navigation -->
  <!-- Page Content -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <h1 class="my-4">리뷰페이지(하나를 클릭했을때 넘어오는페이지)</h1>
      </div>
      <!-- /.col-lg-3 -->
      <div class="col-lg-9">
        <div class="card mt-4">
          <img class="card-img-top img-fluid" src="http://placehold.it/900x400" alt="">
          <div class="card-body">
            <h3 class="card-title">업소이름</h3>
            <p class="card-text">대략적인설명</p> <span class="text-warning">★ ★ ★ ★ ☆</span>4.0 stars(별점이필요할까요?) </div>
        </div>
        <!-- /.card -->
        <div class="card card-outline-secondary my-4">
          <div class="card-header"> 리뷰들 </div>
          <div class="card-body">
            <p>댓글내용</p>
            <small class="text-muted">날짜</small>
            <hr>
            <p>댓글내용2</p>
            <small class="text-muted">날짜</small>
            <hr>
            <p>댓글내용3</p>
            <small class="text-muted">날짜</small>
            <hr>
            <a href="#" class="btn btn-success">Leave a Review</a>
          </div>
          </div>
          </div>
        </div>
        <!-- /.card -->
      </div>
      <!-- /.col-lg-9 -->
    </div>
  </div>
  <div class="text-white bg-light">
    <div class="container">
      <div class="row">
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-secondary">Team S2cond</h2>
          <p class="text-primary">A company for whatever you may need, from website prototyping to publishing</p>
        </div>
        <div class="p-4 col-md-3 text-primary">
          <h2 class="mb-4 text-secondary">Mapsite</h2>
          <ul class="list-unstyled text-primary">About&nbsp;
            <br>
            <a href="#" class="text-primary">How about here</a>
            <br>Come with us
            <br>
            <a href="#" class="text-primary">Contact us</a>
          </ul>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-secondary">Contact</h2>
          <p>
            <a href="tel:+246 - 542 550 5462" class="text-primary"><i class="fa d-inline mr-3 text-secondary fa-phone"></i>+82 010 1234 5678
              <br> </a>
          </p>
          <p style="opacity: 0.5;">
            <a href="mailto:info@pingendo.com" class="text-primary"><i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>Yahmanaza@naver.com</a>
          </p>
          <p>
            <a href="https://goo.gl/maps/AUq7b9W7yYJ2" class="text-primary" target="_blank"><i class="fa d-inline mr-3 fa-map-marker text-secondary"></i>365 YG Jonglo, Seoul</a>
          </p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-secondary">Subscribe</h2>
          <form>
            <fieldset class="form-group text-white"> <label for="exampleInputEmail1" class="text-primary">Get our newsletter</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> </fieldset>
            <button type="submit" class="btn btn-outline-secondary">Submit</button>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center text-secondary">© Copyright 2017 Yahmanaza - All rights reserved. </p>
        </div>
      </div>
    </div>
  </div>
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</body>

</html>
