<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#reviewExampleProc").mouseenter(function(){
		var reviewExample = ${"#reviewExample"}.val();
		alert(reviewExample);
		$.ajax({
			url:'${home}review/reviewExampleProc',
			type:'POST',
			data: {placeName:reviewExample},
			success:function(data){
				 var reviewExampleForm = '<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title">' + place.place_name + 
		            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
		            '        </div>' + 
		            '        <div class="body">' + 
		            '            <div class="img">' +
		            '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
		            '           </div>' + 
		            '            <div class="desc">' + 
		            '                <div class="ellipsis">'+address + 
		            '                <div class="jibun ellipsis">'+place.phone+' </div>' + 
		            '	<form id="frm" action="${home }place/place" method="post">'+
				    '    	<input type="hidden" id="placeName" name="placeName" value="'+place.place_name+'">'+
			        '    	<input type="hidden" id="placeAddr" name="placeAddr" value="'+address+'">'+
				    '       <input type="hidden" id="outLine" name="outLine" value="한줄정보..">'+
				    '       <input type="hidden" id="tel" name="tel" value="'+place.phone+'">'+
				    '       <input type="hidden" id="id" name="id" value="${loginId}">'+
				  	'    	<button type="submit" class="btn btn-secondary">상세보기</button>'+
		  	   		'	</form>'+
		            '            </div>' + 
		            '        </div>' + 
		            '    </div>' +    
		            '</div>'; 

			}
		});
	});
});
</script>
<c:url var="home" value="/" />
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> </head>

<body>
 <c:import url="/top"/>
  <div class="text-center bg-light py-4" style="background-image: url(&quot;background/the_wait_nightlife_night_view_bokeh_atmosphere_window_glass_non-1186147.jpg&quot;);">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white">About Yahmanaza</h1>
          <p class="lead text-white">연인, 친구, 가족과의 소중한 시간. 야만나자가 함께 합니다.</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center">
    <div class="container">
      <div class="row">
      <c:forEach var="myReviewPlaceName" items="${myReviewPlaceNameAll }">
        <div class="col-md-3 col-6 p-1" id="reviewExampleProc">
        	<a href="${home }place/place?placeName=${myReviewPlaceName.placeName }&&placeAddr=${myReviewPlaceName.placeAddr }
        		&&outLine=${myReviewPlaceName.outLine }&&tel=${myReviewPlaceName.tel }&&id=${loginId}">
            <img src="https://pingendo.github.io/templates/sections/assets/gallery_1.jpg" alt="${myReviewPlaceName.placeName }"></a>
        </div>
        </c:forEach>  
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
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>