<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${res }css/icon.css" type="text/css">
  <link rel="stylesheet" href="${res }css/nav.css" type="text/css">
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
        		<form action="${home }member/logout"><button type="submit" class="btn btn-primary" >로그아웃</button></form>
        		<form action="${home }myPage" method="post"><button type="submit" class="btn navbar-btn ml-2 text-white btn-primary" >마이페이지</button></form>
        	</c:when>
        </c:choose>
        <form class="form-inline m-0" id="quickSearch" action="${home }map/quickSearch1">
          <input class="form-control mr-2 mx-2" id="keyword" name="keyword" type="text" placeholder="장소 바로검색!">
          <button class="btn btn-primary" type="button" onclick="searchPlaces()">검 색</button>
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
          <form role="form" action="${home }member/loginProc" method="post">
            <div class="form-group">
              <label for="id1"><span class="glyphicon glyphicon-eye-open"></span> 아이디</label>
              <input type="text" class="form-control" id="id1" name="id" placeholder="Enter id">
            </div>
            <div class="form-group">
              <label for="pw1"><span class="glyphicon glyphicon-eye-open"></span> 패스워드</label>
              <input type="password" class="form-control" id="pw1" name="pw" placeholder="Enter password">
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
  <script type="text/javascript">
  function searchPlaces() {
	var keyword = document.getElementById('keyword').value;
      if (!keyword.replace(/^\s+|\s+$/g, '')) {
          alert('키워드를 입력해주세요!');
          return false;
      }
      
      document.getElementById('quickSearch').submit();
  }
  </script>  