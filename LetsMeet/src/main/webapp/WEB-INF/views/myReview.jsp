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
	.mylink:hover{
	  cursor: pointer;
	  background-color : #87ceeb;
	}
  </style>
  
</head>

<body>
  <%@ include file="common/top.jsp" %>
	 <!--modal end -->

  <div class="text-center bg-light py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white">내가 작성한 리뷰</h1>
          <p class="lead text-white">연인, 친구, 가족과의 소중한 시간. 야만나자가 함께 합니다.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_1.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_5.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_3.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_4.jpg"> </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_6.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_7.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_8.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_9.jpg"> </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_10.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_11.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_12.jpg"> </a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#">
            <img class="d-block img-fluid" src="https://pingendo.github.io/templates/sections/assets/gallery_13.jpg"> </a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 col-6 p-1">
          <a href="#"></a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#"></a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#"></a>
        </div>
        <div class="col-md-3 col-6 p-1">
          <a href="#"></a>
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
  <script type="text/javascript">
  $(document).ready(function(){
		$("#reviewExampleProc a").mouseenter(function(){
			var placeName = $(this).attr("id");	
			
			$.ajax({
				url:'${home}review/reviewExampleProc',
				type:'POST',
				data:{placeName:placeName},
				success:function(data){
					var aclass = $(".reviewExampleProc a").attr('class');
					layer_popup(aclass);
					$("#reviewTitle").html("리뷰 제목 : " + data.reviewTitle);
					$("#reviewContents").html("리뷰 내용 : " + data.reviewContents);
					var appraisal = data.reviewAppraisal;
					var service = data.serviceScore;
					var taste = data.tasteScore;
					var mood = data.moodScore;
					$("#reviewAppraisal a").each(function(item){
						  if(appraisal == $(this).attr("id")){
								$(this).addClass("on").prevAll("a").addClass("on");
							}
					}); 
					$("#serviceScore a").each(function(item){
						  if(service == $(this).attr("id")){
								$(this).addClass("on").prevAll("a").addClass("on");
							}
					}); 
					$("#tasteScore a").each(function(item){
						  if(taste == $(this).attr("id")){
								$(this).addClass("on").prevAll("a").addClass("on");
							}
					}); 
					$("#moodScore a").each(function(item){
						  if(mood == $(this).attr("id")){
								$(this).addClass("on").prevAll("a").addClass("on");
							}
					}); 
					  $(".pop-conts a").off("mouseenter");
				}
			});
		});
  function layer_popup(aclass){

      var aclass = $(aclass);        //레이어의 id를 $el 변수에 저장

      aclass.fadeIn();

      var aclassWidth = ~~(aclass.outerWidth()),
     	   aclassHeight = ~~(aclass.outerHeight()),
     	   docWidth = $(document).width(),
     	   docHeight = $(document).height();

      // 화면의 중앙에 레이어를 띄운다.
      if (aclassHeight < docHeight || aclassWidth < docWidth) {
    	  aclass.css({
              marginTop: -aclassHeight /2,
              marginLeft: -aclassWidth/2
          })
      } else {
          $el.css({top: 0, left: 0});
      }

      aclass.find('a.btn-layerClose').click(function(){
    	  aclass.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
          return false;
      });
  }
	  function goto(page){
		  location.href=${home}+"mypage/"+page;
	  }
  
  });
  </script>
</body>

</html>
