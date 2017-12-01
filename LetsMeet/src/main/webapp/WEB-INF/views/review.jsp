<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${res }css/icon.css" type="text/css">
  <link rel="stylesheet" href="${res }css/jquery.rateyo.min.css" type="text/css">
  <title>리뷰 대응페이지</title>
</head>
<body>
  <c:import url="/top"/>
	 <!--modal end -->
	 
 <div class="text-center bg-light py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white">리 뷰 작 성</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-primary">${placeName }</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="text-primary py-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <form id="frm" action="${home }review/reviewProc" method="post">
          	  <input type="hidden" id="placeName" name="placeName" value="${placeName }">
            <div class="form-group text-primary"> <label for="reviewTitle" class="my-2">▶ 제 목</label>
              <input type="text" class="form-control" id="reviewTitle" name="reviewTitle" placeholder="제목을 입력하세요"> </div>
              <p class="reviewMsg" id="reviewTitleMsg"></p>
              <input type="hidden" id="id" name="id" value="${loginId}">
            <div class="form-group"> <label for="reviewContents" class="my-2">▶ 내 용 작 성</label> 
           		<textarea class="form-control py-0" id="reviewContents" name="reviewContents" rows="3" placeholder="리뷰 내용을 입력하세요"></textarea>
            <div class="form-group"> <label for="reviewMemberType" class="my-2">▶ 고 객 유 형</label>
            <input type="hidden" id="reviewMemberType" name="reviewMemberType">
              <button type="button" class="memberType btn btn-primary" id="typeBtn1" value="나홀로">나홀로</button>
              <button type="button" class="memberType btn btn-primary" id="typeBtn2" value="커플">커플</button>
              <button type="button" class="memberType btn btn-primary" id="typeBtn3" value="가족">가족</button>
              <button type="button" class="memberType btn btn-primary" id="typeBtn4" value="친구들">친구들</button>
            </div>
            <div class="form-group m-0"> <label for="reviewAppraisal" class="my-2">▶ 상 세 평 가</label>
            </div>
            <div class="form-group p-0 m-0"> <label for="reviewAppraisal" class="m-3">1. 전체적 평가</label>
            	<input type="hidden" id="reviewAppraisal" name="reviewAppraisal">
 				<div class="star" id="reviewAppraisalStar"></div>
 				<div class="counter"></div>
            </div>
            <div class="form-group m-0"> <label for="serviceScore" class="m-3">2. 서비스</label>
            	<input type="hidden" id="serviceScore" name="serviceScore">
 				<div class="star" id="serviceStar"></div>
 				<div class="counter"></div>
            </div>
            <div class="form-group m-0"> <label for="tasteScore" class="m-3">3. 음식의 맛</label>
           		<input type="hidden" id="tasteScore" name="tasteScore">
 				<div class="star" id="tasteStar"></div>
 				<div class="counter"></div>
            </div>
            <div class="form-group m-0"> <label for="moodScore" class="m-3">4. 매장 분위기</label>
            	<input type="hidden" id="moodScore" name="moodScore">
 				<div class="star" id="moodStar"></div>
 				<div class="counter"></div>
            </div>
            
<!--             <div class="form-group">  -->
<!--             <label class="custom-file"> -->
<!--         		 ▶ 사 진 업 로 드 -->
<!-- 			  <input type="file" id="file2" class="custom-file-input"> -->
<!-- 			  <span class="custom-file-control"></span> -->
<!-- 			</label> -->
<!--             <label for="InputEmail1" class="my-2">▶ 사 진 업 로 드</label> -->
<!--               <a class="btn btn-primary" href="">search</a> -->
<!--               <input type="email" class="form-control" id="InputEmail1" placeholder="Enter email"> </div> -->
             <button id="sendBtn" type="button" class="btn btn-primary my-3" value="리뷰등록" >리뷰등록</button>
            </div>
          </form>
        </div>
      </div>
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
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script src="${res }js/jquery.rateyo.min.js"></script> //http://rateyo.fundoocode.ninja/#
  <script type="text/javascript">
$(document).ready(function(){
	var loginMsg = "${loginMsg}";
	var msg = "";
	
	if(loginMsg!=""){
		alert(loginMsg);
	}
	
	$(".memberType").on("click", function(){
		$("#reviewMemberType").val($(this).val());
		alert($("#reviewMemberType").val());
	});
	
	$(".star").rateYo({
	    rating: 5,
	    precision: 2,
	    fullStar: true,
	    onChange: function (rating, rateYoInstance) {
	    	switch (rating){
	    	case 1:
	    		msg = "매우 나쁨"; break;
	    	case 2:
	    		msg = "나쁨"; break;
	    	case 3:
	    		msg = "보통"; break;
	    	case 4:
	    		msg = "좋음"; break;
	    	case 5:
	    		msg = "매우 좋음"; break;
	    	}
        	$(this).next().text(msg);
     	}
  	});
	
	$("#sendBtn").on("click", function(){
		$("#reviewAppraisal").val($("#reviewAppraisalStar").rateYo("rating"));
		$("#serviceScore").val($("#serviceStar").rateYo("rating"));
		$("#tasteScore").val($("#tasteStar").rateYo("rating"));
		$("#moodScore").val($("#moodStar").rateYo("rating"));
		$("#frm").submit();
	});
});
</script>
</body>

</html>