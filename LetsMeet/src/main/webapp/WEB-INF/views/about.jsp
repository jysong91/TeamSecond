<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> </head>

<body>
 <nav class="navbar navbar-expand-md bg-secondary navbar-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="${home }">Yahmanaza</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item mx-2">
            <a class="nav-link" href="#">사용설명서</a>
          </li>
          <li class="nav-item mx-2">
            <a class="nav-link" href="${home }about">About</a>
          </li>
        </ul>
        <c:choose>
        	<c:when test="${null eq loginId }">
        		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#loginModal" >로그인</button>
      		    <a class="btn navbar-btn ml-2 text-white btn-primary" href="${home }member"><i class="fa d-inline fa-lg fa-user-circle-o"></i> 회원가입</a>
        	</c:when>
        	<c:when test="${null ne loginId }">
        		<form action="${home }member/logout"><button type="submit" class="logOutbtn" >로그아웃</button></form>
        	</c:when>
        </c:choose>
        <form class="form-inline m-0">
          <input class="form-control mr-2 mx-2" type="text" placeholder="장소 바로검색!">
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
          <form role="form" action="${home }member/loginProc">
            <div class="form-group">
              <label for="id"><span class="glyphicon glyphicon-eye-open"></span> 아이디</label>
              <input type="text" class="form-control" id="id" name="id" placeholder="Enter id">
            </div>
            <div class="form-group">
              <label for="pw"><span class="glyphicon glyphicon-eye-open"></span> 패스워드</label>
              <input type="password" class="form-control" id="pw" name="pw" placeholder="Enter password">
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
  <div class="text-center bg-light py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white">About Yahmanaza</h1>
          <p class="lead text-white">연인, 친구, 가족과의 소중한 시간. 야만나자가 함께 합니다.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center text-white opaque-overlay gradient-overlay" style="background-image: url(&quot;https://pingendo.github.io/templates/sections/assets/gallery_architecture_3.jpg&quot;);">
    <div class="container">
      <div class="row">
        <div class="p-4 col-md-3"> <i class="d-block fa fa-3x fa-comments"></i>
          <h2 class="my-3">정확생생후기</h2>
          <p>정확하고 생생한 사용자들의&nbsp;
            <br>후기로 보다 정확한 정보를&nbsp;
            <br>제공합니다!</p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-database"></i>
          <h2 class="my-3">스페셜알고리즘</h2>
			<p>야만나자의 특별한 알고리즘으로
            <br>유저의 니즈에 부합되는 적정
            <br>장소를 찾아드립니다!</p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-compress"></i>
          <h2 class="my-3">중간지점찾기</h2>
          <p>더 이상 약속장소 정하기에
            <br>많은 시간을 쏟지마세요.
            <br>클릭한번에 최적의 중간장소를
            <br>정해드립니다!</p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-share-alt"></i>
          <h2 class="my-3">친구와공유하기</h2>
          <p>나의 추천장소를 친구들과
            <br>함께 공유할 수 있습니다!</p>
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