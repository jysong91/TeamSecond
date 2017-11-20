<%@ page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta charset="UTF-8">
    <title>리뷰쓰기</title>
<c:url  var="home" value="/" />
<script src="${home }resources/js/jquery.min.js"></script>

<body>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> </head>

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
  <div class="py-5 bg-primarytext-white">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-black primary text-left display-4">${placeName }</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
<!--           <img class="d-block img-fluid my-3" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;markers=Alexander+platz&amp;center=Berlin&amp;zoom=13&amp;size=640x500&amp;sensor=false" draggable="true"> -->
          <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
          </div>
        </div>
        <div class="col-md-6">
          <h1>${placeName }</h1>
          <p>${outLine }</p>
            <div class="form-group"> <label for="InputName">메 뉴 판</label>
              <input type="text" class="form-control" id="InputName" placeholder="Your name"> </div>
            <div class="form-group"> <label for="InputEmail1">찾아가는 길</label>
              <input type="email" class="form-control" id="InputEmail1" placeholder="Enter email"> </div>
            <div class="form-group"> <label for="InputEmail1">리뷰보기</label>
              <input type="email" class="form-control" id="InputEmail1" placeholder="Enter email"> </div>
            <div class="form-group"> <label for="InputEmail1">콜럼은 다른 이미지</label>
              <input type="email" class="form-control" id="InputEmail1" placeholder="Enter email"> </div>
            <button type="submit" class="btn btn-secondary">다음</button>
            <button type="submit" class="btn btn-secondary">이전</button>
            <br>
            <form id="frm" action="${home }place/placeInsert" method="post">
	            <input type="hidden" id="placeName" name="placeName" value="${placeName }">
	            <input type="hidden" id="placeAddr" name="placeAddr" value="${placeAddr }">
	            <input type="hidden" id="outLine" name="outLine" value="${outLine }">
	            <input type="hidden" id="tel" name="tel" value="${tel }">
       	    <button type="submit" class="btn btn-secondary">리뷰작성</button>
            </form>
        </div>
      </div>
    </div>
  </div>
  <div class="p-5 gradient-overlay bg-secondary">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-white primary text-left display-4">메 뉴 판</h3>
        </div>
      </div>
      <div class="row">
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>$</sup> 25 </h1>
              <h3>연인세트</h3>
              <hr>
              <p>팝업으로 표시</p>
              <a href="#" class="btn btn-dark">상세보기</a>
            </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>$</sup> 25 </h1>
              <h3>연인세트</h3>
              <hr>
              <p>팝업으로 표시</p>
              <a href="#" class="btn btn-dark">상세보기</a>
            </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>$</sup> 25 </h1>
              <h3>연인세트</h3>
              <hr>
              <p>팝업으로 표시</p>
              <a href="#" class="btn btn-dark">상세보기</a>
            </div>
          </div>
        </div>
        <div class="p-3 align-self-center col-md-3">
          <div class="card">
            <div class="card-block p-5">
              <h1><sup>$</sup> 25 </h1>
              <h3>연인세트</h3>
              <hr>
              <p>팝업으로 표시</p>
              <a href="#" class="btn btn-dark">상세보기</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-dark text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6 text-center align-self-center">
          <h1 class="">${placeName }</h1>
          <p class="mb-5"> <strong>Pingendo Inc.</strong>
            <br>${placeAddr }
            <br> <abbr title="Phone">P:</abbr> ${tel } </p>
        </div>
        <div class="col-md-6 p-0">
<!--           <img class="img-fluid" src="https://maps.googleapis.com/maps/api/staticmap?key=AIzaSyDW8nO9JhT_pEjebobq9pgUF2cEp0EUb1I&amp;&amp;markers=folsom+Ave+san+francisco&amp;center=folsom+Ave+san+francisco&amp;zoom=16&amp;size=640x300&amp;sensor=false&amp;scale=2">  -->
          </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-primary text-left display-4">추 천 리 뷰</h3>
        </div>
      </div>
      <div class="row text-center">
        <div class="col-md-12">
          <div class="row text-left mt-5">
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-mars"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>마이쪙</b></h5>
                </div>
              </div>
              <p>Based on fluid design principles. Works with screen resolution. &nbsp;In-app chat panel 24/7 active. The support you need, right there.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-venus"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>강추</b></h5>
                </div>
              </div>
              <p>Help us spreading the word. Tell your friends with just one-click.&nbsp;Work simultaneously on different panels with the switcher</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-neuter"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>별로에요</b></h5>
                </div>
              </div>
              <p>You are working with plain HTML and SASS files on your computer, so extending and integrating Javascript is a breeze.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-mars-stroke"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>For anyone</b></h5>
                </div>
              </div>
              <p>Based on fluid design principles. Works with screen resolution.&nbsp;Choose settings depending on the criteria you value the most.</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-mars-double"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>좋았습니다</b></h5>
                </div>
              </div>
              <p>In-app chat panel 24/7 active. The support you need, right there. Pingendo enhance the battery duration and the quality of your life.&nbsp;</p>
            </div>
            <div class="col-md-4 my-3">
              <div class="row mb-3">
                <div class="text-center col-2"><i class="d-block mx-auto fa fa-3x fa-genderless"></i></div>
                <div class="align-self-center col-10">
                  <h5 class="text-secondary"><b>실화냐?</b></h5>
                </div>
              </div>
              <p>Help us spreading the word. Tell your friends with just one-click.&nbsp;Work simultaneously on different panels. Share the work with teammates.</p>
            </div>
          </div>
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
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>