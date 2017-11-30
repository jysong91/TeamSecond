<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html>
<script src="${res}js/jquery.min.js"></script>
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
	.peopleCarouselImg img {
	  width: auto;
	  height: 400px;
	  max-height: 400px;
	}
  </style>
</head>

<body>
  <c:import url="/top"/>
	 <!--modal end -->
	 
  <div class="text-center opaque-overlay py-0" style='background-image: url(${res}img/background/768892-city-light-wallpaper.jpg);'>
    <div class="container py-5">
      <div class="row">
        <div class="col-md-12 text-white">
          <h1 class="display-3 mb-4"><b><b>야만나자가 전하는 색다른 경험</b></b>
          </h1>
          <p class="lead mb-5">특별한 당신을 초대합니다. 지금 바로 체험해 보세요!</p>
          <a href="${home }map" class="btn btn-lg mx-1 btn-primary">시 작 하 기</a>
        </div>
      </div>
    </div>
  </div>
  <div class="text-white py-3">
    <div class="container">
      <div class="row">
        <div class="align-self-center col-md-6 p-5">
          <h1 class="mb-4 text-primary text-nowrap">야만나자가 추천하는&nbsp;
            <br>
            <div>Weekly Top.7</div>
          </h1>
          <a class="btn btn-lg btn-outline-primary" href="${home }bestPlace">View the gallery</a>
        </div>
        <div class="col-md-6 p-0">
          <div id="carousel1" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item peopleCarouselImg active">
                <img src="https://pingendo.github.io/templates/sections/assets/gallery_restaurant_1.jpg" alt="first slide" class="d-block img-fluid w-100">
                <div class="carousel-caption">
                  <h3>Dining room</h3>
                  <p>Good architecture, better food</p>
                </div>
              </div>
              <div class="carousel-item peopleCarouselImg">
                <img class="d-block img-fluid w-100" src="https://pingendo.github.io/templates/sections/assets/gallery_restaurant_2.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>Cigar room</h3>
                  <p>Enjoy our fine selection</p>
                </div>
              </div>
              <div class="carousel-item peopleCarouselImg">
                <img class="d-block img-fluid w-100" src="${res }img/background/827924-hd-city-light-wallpaper.jpg" data-holder-rendered="true">
                <div class="carousel-caption">
                  <h3>Relax area</h3>
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
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b class="text-center text-primary">각종 놀이 시설</b> </h5>
        </div>
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b class="text-primary">주변 맛집</b> </h5>
        </div>
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b class="text-primary">이색 데이트 장소</b></h5>
        </div>
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b class="text-primary">볼링, 풋살장</b></h5>
        </div>
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b class="text-center text-primary">기타 카테고리1</b></h5>
        </div>
        <div class="col-md-2 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b class="text-center text-primary">기타 카테고리2</b></h5>
        </div>
      </div>
    </div>
  </div>
  <div class="pt-5 text-white bg-primary">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-md-left text-center align-self-center my-5">
          <h3 class="display-3 text-nowrap text-white">야만나자 앱 출시!</h3>
          <p class="lead text-white text-right">지금 바로 다운로드 받으세요~!</p>
          <div class="row mt-5">
            <div class="col-md-5 col-6">
              <a href="#">
                <img class="center-block img-fluid d-block" src="https://pingendo.github.io/templates/sections/assets/download_android.png"> </a>
            </div>
            <div class="col-md-5 col-6">
              <a href="#">
                <img class="center-block img-fluid d-block" src="https://pingendo.github.io/templates/sections/assets/download_ios.png"> </a>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <img class="img-fluid d-block mx-auto" src="https://pingendo.github.io/templates/sections/assets/iphone_cover.png"> </div>
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
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</body>

</html>
