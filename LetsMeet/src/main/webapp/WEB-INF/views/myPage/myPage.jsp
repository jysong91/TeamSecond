<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:url var="/" value="/" />
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> </head>

<body>
<c:import url="/top"/>
  <div class="py-4" style="background-image: url(&quot;background/the_wait_nightlife_night_view_bokeh_atmosphere_window_glass_non-1186147.jpg&quot;);">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center display-4 text-white">마 이 페 이 지</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-light py-3">
    <div class="container">
      <div class="row">
        <div class="py-5 col-md-6">
          <div class="row">
            <div class="text-center col-4"><i class="d-block mx-auto fa fa-5x fa-address-card"></i></div>
            <div class="col-8">
              <h5 class="mb-3 text-primary"><b>회원 정보 수정</b></h5>
              <p class="my-1">나의 회원 정보 및 개인 정보를 수정합니다.</p>
            </div>
          </div>
        </div>
        <div class="py-5 col-md-6">
          <div class="row">
            <div class="text-center col-4"><i class="d-block mx-auto fa fa-5x fa-align-justify"></i></div>
            <div class="col-8">
              <h5 class="mb-3 text-primary"><a href="${home }review/selectMyReviewPlaceNameAll"><b>내가 작성한 리뷰</b></a></h5>
              <p class="my-1">내가 직접 작성한 리뷰를 볼 수 있습니다.</p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="py-5 col-md-6">
          <div class="row">
            <div class="text-center col-4"><i class="d-block mx-auto fa fa-5x fa-comments-o"></i></div>
            <div class="col-8">
              <h5 class="mb-3 text-primary"><a href="${home }member/myPageQnA"><b>1대1 QnA</b></a></h5>
              <p class="my-1">문의사항, 건의사항 등을 개발자에게 전달합니다.</p>
            </div>
          </div>
        </div>
        <div class="py-5 col-md-6">
          <div class="row">
            <div class="text-center col-4"><i class="d-block mx-auto fa fa-5x fa-heart"></i></div>
            <div class="col-8">
              <h5 class="mb-3 text-primary"><b>나의 위시 리스트</b></h5>
              <p class="my-1">내가 찜해두었던 장소를 확인할 수 있습니다.</p>
            </div>
          </div>
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
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>