<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
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
  </style>
  
</head>

<body>
  <nav class="navbar navbar-expand-md bg-secondary navbar-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="#">Yahmanaza</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">사용설명서</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About us</a>
          </li>
        </ul>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal" >로그인</button>
        <a class="btn navbar-btn ml-2 text-white btn-secondary" href="${home }member"><i class="fa d-inline fa-lg fa-user-circle-o"></i> 회원가입</a>
        <form class="form-inline m-0">
          <input class="form-control mr-2" type="text" placeholder="장소 바로검색!">
          <button class="btn btn-primary" type="submit">검 색</button>
        </form>
      </div>
    </div>
  </nav>
  
    <!-- Modal -->
  <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true" aria-labelledby="loginModal">
    <div class="modal-dialog" role="document">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <h4><span class="glyphicon glyphicon-lock"></span> 로그인</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form role="form">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> 이메일 주소</label>
              <input type="email" class="form-control" id="usrname" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> 패스워드</label>
              <input type="password" class="form-control" id="psw" placeholder="Enter password">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked> 아이디 기억하기</label>
            </div>
              <button type="submit" class="btn btn-success btn-block"><span class="glyphicon glyphicon-off"></span> 로그인</button>
          </form>
        </div>
        <div class="modal-footer">
<!--           <button type="submit" class="btn btn-danger btn-default mx-auto" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 취소</button> -->
          <h6><a href="#">회원가입</a></h6>
          <h6><a href="#">비밀번호찾기</a></h6>
        </div>
      </div>
      
    </div>
  </div> 
	 <!--modal end -->
	 
  <div class="py-5 text-center opaque-overlay" style="background-image: url(&quot;https://pingendo.github.io/templates/sections/assets/cover_event.jpg&quot;);">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-12 text-white">
          <h1 class="display-3 mb-4"><b><b>야만나자가 전하는 색다른 경험</b></b>
          </h1>
          <p class="lead mb-5">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세&nbsp; </p>
          <a href="${home }map" class="btn btn-lg mx-1 btn-secondary">시 작 하 기</a>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-white bg-secondary">
    <div class="container">
      <div class="row">
        <div class="align-self-center p-5 col-md-6">
          <h3 class="mb-4">야만나자가 제안하는 핫 플레이스</h3>
          <p class="mb-5 w-100 text-left">이번주 가장 많은 추천과 가장 높은 평점을 획득한
            <br> 약속장소를 추천해드립니다.</p>
          <a class="btn btn-lg btn-outline-light" href="#">바 로 가 기</a>
        </div>
        <div class="col-md-6 p-0">
          <div id="carousel1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item">
                <img src="https://pingendo.github.io/templates/sections/assets/gallery_restaurant_1.jpg" alt="first slide" class="d-block img-fluid w-100">
                <div class="carousel-caption">
                  <h3>Dining room</h3>
                  <p>Good architecture, better food</p>
                </div>
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid w-100" src="https://pingendo.github.io/templates/sections/assets/gallery_restaurant_2.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>Cigar room</h3>
                  <p>Enjoy our fine selection</p>
                </div>
              </div>
              <div class="carousel-item active">
                <img class="d-block img-fluid w-100" src="https://pingendo.github.io/templates/sections/assets/gallery_restaurant_3.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>원할아버지 닭칼국수</h3>
                  <p>Take the time to chill</p>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#carousel1" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a>
            <a class="carousel-control-next" href="#carousel1" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span> </a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-light text-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>각종 놀이 시설</b></h5>
            <p class="mt-1"></p>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>주변 맛집 찾아보기</b></h5>
            <p class="mt-1"></p>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b>이색 데이트 장소</b></h5>
          <p class="mt-1"></p>
        </div>
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
            <li><a href="#" class="text-white">About</a></li>
            <li><a href="#" class="text-white">How about here</a></li>
            <li><a href="#" class="text-white">Contact us</a></li>
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