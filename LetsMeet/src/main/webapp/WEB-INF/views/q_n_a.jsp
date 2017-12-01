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
  
</head>

<body>
  <%@ include file="common/top.jsp" %>
	 <!--modal end -->

  <div class="text-center bg-light py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white">1대1 문의하기</h1>
          <p class="lead text-white">문의사항, 건의사항 등을 개발자에게 전달합니다.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" >
    <div class="container">
      <div class="row">
        <div class="align-self-center col-md-6 text-white">
          <h1 class="text-center text-md-left display-3 text-primary">무슨 문제라도...?</h1>
          <p class="lead text-nowrap text-primary">문의사항이나 건의사항을 남겨주시면 신속하게 처리해드립니다.</p>
        </div>
        <div class="col-md-6" id="book">
          <div class="col-md-12">
            <form>
              <div class="form-group"> <label for="InputName" class="text-primary">사용자 이름</label>
                <input type="text" class="form-control" id="InputName" placeholder="이름을 입력해주세요"> </div>
              <div class="form-group"> <label for="InputEmail1" class="text-primary">이메일 주소</label>
                <input type="email" class="form-control" id="InputEmail1" placeholder="이메일을 입력해주세요"> </div>
              <div class="form-group"> <label for="Textarea" class="text-primary">문의사항</label> <textarea class="form-control" id="Textarea" rows="3" placeholder="내용을 작성해주세요"></textarea> </div>
              <button type="submit" class="btn btn-secondary">보 내 기</button>
            </form>
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
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  function goto(page){
	  location.href=${home}+"mypage/"+page;
  }
  </script>
</body>

</html>
