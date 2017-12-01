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
 <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h1>W E L C O M E !
            <br> </h1>
          <p class="lead">야만나자의 회원이 되시면 보다 많은 서비스를 받으실 수 있습니다.</p>
        </div>
      </div>
    </div>
  </div>
  ${sessionScope.loginId}
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-3"> </div>
        <div class="col-md-6">
          <div class="card text-white p-5 bg-primary text-center">
            <div class="card-body">
              <h1 class="mb-4">로 그 인</h1>
              <form action="${home }member/loginProc" method="post">
                <div class="form-group"> <label>아이디</label>
                  <input type="text" id="id" name="id" class="form-control" placeholder="아이디"> </div>
                <div class="form-group"> <label>패스워드</label>
                  <input type="password" id="pw" name="pw" class="form-control" placeholder="패스워드"> </div>
                <button type="submit" class="btn btn-secondary">로그인</button>
                <button type="button" onclick="goTo('${home}member/join')" id="joinBtn" class="btn btn-secondary">회원가입</button>
                <button type="button" onclick="goTo('findpage')" id="findBtn" class="btn btn-secondary">아이디/비밀번호 찾기</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  <script type="text/javascript">
  function goTo(path){
	  location.href = path;
  }
  </script>
</body>
</html>