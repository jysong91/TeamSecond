<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html>
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var loginMsg = "${loginMsg}";
	if(loginMsg!=""){
		alert(loginMsg);
	}
});
</script>
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
  </style>
  
</head>

<body>
  <%@ include file="common/top.jsp" %>
	 <!--modal end -->
	 
  <div class="py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h1 class="text-white">How about here?</h1>
          <p class="lead text-white">한주간 가장 많은 리뷰와 높은 평점을 획득한 장소를 추천해드립니다.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center mb-5 text-primary">Weekly Best Top.7</h1>
        </div>
      </div>
      <div class="row">
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_6.jpg" class="img-fluid"> </a>
        </div>
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_2.jpg" class="img-fluid"> </a>
        </div>
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_3.jpg" class="img-fluid"> </a>
        </div>
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_1.jpg" class="img-fluid"> </a>
        </div>
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_5.jpg" class="img-fluid"> </a>
        </div>
        <div class="p-0 col-md-2 col-6">
          <a href="stories.html">
            <img src="https://pingendo.github.io/templates/sections/assets/stories_4.jpg" class="img-fluid"> </a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-0">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-7">
          <h2 class="text-primary">#1 심리상담 &amp; 타로점</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class="col-md-5 align-self-center">
          <img class="img-fluid d-block w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
      </div>
      <div class="row">
        <div class="col-md-5">
          <img class="img-fluid d-block mb-4 w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
        <div class="col-md-7">
          <h2 class="text-primary pt-3">#2 신당동 족발</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-0">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-7">
          <h2 class="text-primary">#3 장충동 떡볶이</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class="col-md-5 align-self-center">
          <img class="img-fluid d-block w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
      </div>
      <div class="row">
        <div class="col-md-5">
          <img class="img-fluid d-block mb-4 w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
        <div class="col-md-7">
          <h2 class="text-primary pt-3">#4 방탈출 카페</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-0">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-7">
          <h2 class="text-primary">#5 당 구 장</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class="col-md-5 align-self-center">
          <img class="img-fluid d-block w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
      </div>
      <div class="row">
        <div class="col-md-5">
          <img class="img-fluid d-block mb-4 w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
        <div class="col-md-7">
          <h2 class="text-primary pt-3">#6 그랜드하얏트 호텔</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-0">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-7">
          <h2 class="text-primary">#7 찜 질 방</h2>
          <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>
        <div class="col-md-5 align-self-center">
          <img class="img-fluid d-block w-100 img-thumbnail" src="background/34ad1f724fdd84d76bb3424e068175aa.jpg"> </div>
      </div>
    </div>
  </div>
  <div class="bg-dark text-white">
    <div class="container">
      <div class="row">
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-secondary">Team S2cond</h2>
          <p class="text-white">A company for whatever you may need, from website prototyping to publishing</p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-secondary">Mapsite</h2>
          <ul class="list-unstyled">
            <a href="#" class="text-white">A</a>bout
            <br>
            <a href="#" class="text-white">How about here</a>
            <br>Come with us
            <br>
            <a href="#" class="text-white">Contact us</a>
          </ul>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4">Contact</h2>
          <p>
            <a href="tel:+246 - 542 550 5462" class="text-white"><i class="fa d-inline mr-3 text-secondary fa-phone"></i>+82 010 1234 5678
              <br> </a>
          </p>
          <p style="opacity: 0.5;">
            <a href="mailto:info@pingendo.com" class="text-white"><i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>Yahmanaza@naver.com</a>
          </p>
          <p>
            <a href="https://goo.gl/maps/AUq7b9W7yYJ2" class="text-white" target="_blank"><i class="fa d-inline mr-3 fa-map-marker text-secondary"></i>365 YG Jonglo, Seoul</a>
          </p>
        </div>
        <div class="p-4 col-md-3">
          <h2 class="mb-4 text-light">Subscribe</h2>
          <form>
            <fieldset class="form-group text-white"> <label for="exampleInputEmail1">Get our newsletter</label>
              <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> </fieldset>
            <button type="submit" class="btn btn-outline-secondary">Submit</button>
          </form>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3">
          <p class="text-center text-white">© Copyright 2017 Yahmanaza - All rights reserved. </p>
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
