<%@ page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/resources/" var="res"></c:url>
<c:url value="/" var="home"></c:url>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>약속장소잡기</title>
    <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${res }css/icon.css" type="text/css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>5
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="${res }css/map.css" rel="stylesheet" draggable="auto">
    <link href="${res }css/nav.css" rel="stylesheet" draggable="auto">
  </head>
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
          <li class="nav-item">
            <a class="nav-link text-white" href="#mapSection">지도로 보기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#listSection">리스트로 보기</a>
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

<div class="map_wrap" id="mapSection">
 <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;">
	 <div id="layer_fixed">
	    <table cellspacing="0" cellpadding="0" style="width:100%; height:100%;">
		    <tr>
		       <td style="vertical-align:middle; padding-left: 20px; padding-right: 20px;">
					<a href="#mapSection">지도로 보기</a>
		       </td>
		    </tr>
		    <tr>
		        <td style="vertical-align:middle; padding-left: 20px; padding-right: 20px;">
					<a href="#listSection">리스트로 보기</a>
		       	</td>
		    </tr>
	    </table>
	    </div>
	</div>
    <div id="menu_wrap" class="bg_white">
		<div class="option" id="option">
			<form class="form-inline" onsubmit="searchPlaces('keyword1');  return false;" style="flex-flow: inherit;">
				<input class="form-control" placeholder="나의 위치는?" type="text" value="" id="keyword1" size="15"> 
				<button type="submit" class="btn btn-primary">검색하기</button>
			</form>
	       	<form class="form-inline" onsubmit="searchPlaces('keyword2'); return false;" style="flex-flow: inherit;">
				<input class="form-control" placeholder="친구의 위치는?" type="text" value="" id="keyword2" size="15"> 
				<button type="submit" class="btn btn-primary">검색하기</button> 
			</form>
			<span id="addPerson"></span>
			<button class="btn btn-lg" onclick="addPerson();" aria-label="Plus">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</button>
<form id="searchMidFrm" action="${home }map/calMid" method="post"> 
			<input onclick="checkSearchText();" type="button" class="btn btn-primary" value="중간지점 찾기"> 
		    <input type="hidden" class="form-control" id="ppl1" name="ppl" >
		    <input type="hidden" class="form-control" id="ppl2" name="ppl" >
		    <span id="addPerson2"></span>
</form>
		</div>
        <hr>
        <ul id="placesList" style="padding:0;font-size:12px;"></ul>
        <div id="pagination"></div>
    </div>
    
</div>
<hr>
  <div id="listSection" class="py-4" style='background-image: url(${res}img/background/about_bg.jpg);'>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center text-white display-4">리 스 트 로 보 기</h1>
        </div>
      </div>
    </div>
  </div>
  <div class="bg-light text-dark py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-primary text-left display-4">숙박업소</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>숙박업소1</b>
            <br> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>숙박업소2</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>숙박업소2</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>숙박업소2</b> </h5>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-primary text-left display-4">편의시설</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>편의시설1</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>편의시설2</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>편의시설3</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>편의시설4</b> </h5>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <h3 class="text-primary text-left display-4">추천음식점</h3>
        </div>
      </div>
      <div class="row">
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>추천음식점1</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>추천음식점2</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>추천음식점3</b> </h5>
        </div>
        <div class="col-md-3 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>추천음식점4</b> </h5>
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
    <script src="${res }js/jquery.min.js"></script>
    <script src="${res }js/bootstrap.min.js"></script>
    <script src="${res }js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9e9cc6e5624472d000d642a90d7a51ab&libraries=services"></script>
    <script type="text/javascript">
	    var markers = [];
		
	    var userMarkers = [];
	    
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	        mapOption = {
	            center: new daum.maps.LatLng(${calRst}), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };
	    
	    // 지도를 생성합니다    
	    var map = new daum.maps.Map(mapContainer, mapOption); 
		
	 	// 마커가 표시될 위치입니다 
	    var markerPosition  = new daum.maps.LatLng(${calRst}); 
		
    	// 마커를 생성합니다
	    var marker = new daum.maps.Marker({
	        position: markerPosition
	    });
		
	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);
	 	

	    // 장소 검색 객체를 생성합니다
	    var ps = new daum.maps.services.Places();  

	    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 오버레이
	    var overlay = null;
	    
	    // 사람 몇명인지 카운트
	    var cnt_ppl = 2;
	    
	    // 몇번째 사람의 검색인가
	    var search_ppl = "0";
	    
	    var circle = new daum.maps.Circle({
		    center : new daum.maps.LatLng(${calRst}),  // 원의 중심좌표 입니다 
		    radius: 1000, // 미터 단위의 원의 반지름입니다 
		    strokeWeight: 5, // 선의 두께입니다 
		    strokeColor: '#75B8FA', // 선의 색깔입니다
		    strokeOpacity: 0.7, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		    strokeStyle: 'dashed', // 선의 스타일 입니다
		    fillColor: '#CFE7FF', // 채우기 색깔입니다
		    fillOpacity: 0.5  // 채우기 불투명도 입니다   
		});
	    
	    //중간지점인지 판단해서 오버레이 띄워줌.
	    //카테고리 검색 후에도 마커 삭제 메소드에 의해 사라지지 않도록 별도의 이름(midMarker)으로 마커를 생성한다.
	    //또한 좌측의 검색창을 없애준다.
	    /* if(${autoOverlay}==true){
	    	// 마커를 생성합니다
		    var midMarker = new daum.maps.Marker({
		        position: markerPosition
		    });

		    // 마커가 지도 위에 표시되도록 설정합니다
		    midMarker.setMap(map);
	    	displayMidOverlay(marker);
	    	
	    	//좌측의 검색창을 없앤다.
	    	removeWrap();
	    }else{
	    	// 마커를 생성합니다
		    var marker = new daum.maps.Marker({
		        position: markerPosition
		    });

		    // 마커가 지도 위에 표시되도록 설정합니다
		    marker.setMap(map);
	    } */
	    
// 	    if("1"==${isFindCenter}){
// 	    	ps.keywordSearch('맛집', placesSearchCB, {
// 	    		location: new daum.maps.LatLng(${calRst}),
//  	        	radius: ${rad}
// 	    	});
// 	    }
	    
	    // 키워드 검색을 요청하는 함수입니다
	    function searchPlaces(id) {
			var keyword = document.getElementById(id).value;
	        if (!keyword.replace(/^\s+|\s+$/g, '')) {
	            alert('키워드를 입력해주세요!');
	            return false;
	        }
			circle.setMap(null);
   			search_ppl=id.substr(7,1);
	        
	        ps.keywordSearch( keyword, placesSearchCB);
	    }
		
	    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	    function placesSearchCB(data, status, pagination) {
	        if (status === daum.maps.services.Status.OK) {
	            displayPlaces(data,true);
	            displayPagination(pagination);
	        } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	            alert('검색 결과가 존재하지 않습니다.');
	            return;
	        } else if (status === daum.maps.services.Status.ERROR) {
	            alert('검색 중 오류가 발생했습니다.');
	            return;
	        }
	    }
	    
	    //선택한 카테고리별로 검색하는 함수..인데 위의 함수랑 차이가 없어서 안쓰임. 일단 보류
	    /* function fromMidCB(data, status, pagination) {
	        if (status === daum.maps.services.Status.OK) {
	            displayPlaces(data,true);
	            displayPagination(pagination);
	        } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	            alert('주변 검색 결과가 존재하지 않습니다.');
	            return;
	        } else if (status === daum.maps.services.Status.ERROR) {
	            alert('검색 중 오류가 발생했습니다.');
	            return;
	        }
	    } */

	    // 검색 결과 목록과 마커를 표출하는 함수입니다
	    function displayPlaces(places, remove) {
	        var listEl = document.getElementById('placesList'), 
	        menuEl = document.getElementById('menu_wrap'),
	        fragment = document.createDocumentFragment(), 
	        bounds = new daum.maps.LatLngBounds(), 
	        listStr = '';
	        
	        // 검색 결과 목록에 추가된 항목들을 제거합니다
	        removeAllChildNods(listEl);

	        // 지도에 표시되고 있는 마커를 제거합니다
	        if(remove==true){
		        removeMarker();
	        }
	        
	        for ( var i=0; i<places.length; i++ ) {

	            // 마커를 생성하고 지도에 표시합니다
	            var placePosition = new daum.maps.LatLng(places[i].y, places[i].x),
	                marker = addMarker(placePosition, i), 
	                itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

	            // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	            // LatLngBounds 객체에 좌표를 추가합니다
	            bounds.extend(placePosition);
				
	            // 마커와 검색결과 항목에 mouseover 했을때
	            // 해당 장소에 인포윈도우에 장소명을 표시합니다
	            // mouseout 했을 때는 인포윈도우를 닫습니다
	            (function(marker, place) {
	                daum.maps.event.addListener(marker, 'click', function() {
	                	closeOverlay();
	                	var personLatlng = marker.getPosition();
	                	if("1"==${isFindCenter})    	displayInfowindow(marker, place);
	                	else{
	                		displayLoc(marker, place);
        	    			document.getElementById('ppl'+search_ppl).value = personLatlng;
        	    			userMarkers[search_ppl-1] = marker;
	                	}
	        		});
	                itemEl.onclick = function(){
	                	closeOverlay();
	                	var personLatlng = marker.getPosition();
	                	if("1"==${isFindCenter}){
	                		displayInfowindow(marker, place);
	                	}else{
	                		displayLoc(marker, place);
	                		document.getElementById('ppl'+search_ppl).value = personLatlng;
	                		userMarkers[search_ppl-1] = marker;
	                	}
        	    		panTo(personLatlng);
	                };
	            })(marker, places[i]);

	            fragment.appendChild(itemEl);
	        }

	        // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
	        listEl.appendChild(fragment);
	        menuEl.scrollTop = 0;
	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    }

	    // 검색결과 항목을 Element로 반환하는 함수입니다
	    function getListItem(index, places) {

	        var el = document.createElement('li'),
	        itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
	                    '<div class="info">' +
	                    '   <h5>' + places.place_name + '</h5>';

	        if (places.road_address_name) {
	            itemStr += '    <span>' + places.road_address_name + '</span>' +
	                        '   <span class="jibun gray">' +  places.address_name  + '</span>';
	        } else {
	            itemStr += '    <span>' +  places.address_name  + '</span>'; 
	        }
	                     
	          itemStr += '  <span class="tel">' + places.phone  + '</span>' +
	                    '</div>';           

	        el.innerHTML = itemStr;
	        el.className = 'item';

	        return el;
	    }

	    // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	    function addMarker(position, idx, title) {
	        var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	            imageSize = new daum.maps.Size(36, 37),  // 마커 이미지의 크기
	            imgOptions =  {
	                spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
	                spriteOrigin : new daum.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	                offset: new daum.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	            },
	            markerImage = new daum.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	                marker = new daum.maps.Marker({
	                position: position, // 마커의 위치
	                image: markerImage,
	                clickable: true
	            });

	        marker.setMap(map); // 지도 위에 마커를 표출합니다
	        markers.push(marker);  // 배열에 생성된 마커를 추가합니다

	        return marker;
	    }

	    // 지도 위에 표시되고 있는 마커를 모두 제거합니다
	    function removeMarker() {
	        for ( var i = 0; i < markers.length; i++ ) {
	            markers[i].setMap(null);
	        }
	        markers = [];
	        marker.setMap(null);
	    }

	    // 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	    function displayPagination(pagination) {
	        var paginationEl = document.getElementById('pagination'),
	            fragment = document.createDocumentFragment(),
	            i; 

	        // 기존에 추가된 페이지번호를 삭제합니다
	        while (paginationEl.hasChildNodes()) {
	            paginationEl.removeChild (paginationEl.lastChild);
	        }

	        for (i=1; i<=pagination.last; i++) {
	            var el = document.createElement('a');
	            el.href = "#";
	            el.innerHTML = i;

	            if (i===pagination.current) {
	                el.className = 'on';
	            } else {
	                el.onclick = (function(i) {
	                    return function() {
	                        pagination.gotoPage(i);
	                    }
	                })(i);
	            }

	            fragment.appendChild(el);
	        }
	        paginationEl.appendChild(fragment);
	    }

	    // 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	    // 인포윈도우에 장소명을 표시합니다
	    // content바꾸면 커스텀 창 만들수있음
	    function displayInfowindow(marker, place) {
	    	var address = null;
	    	if(place.road_address_name)		address = place.road_address_name;
	    	else							address = place.address_name;
	        var content = '<div class="wrap">' + 
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
//             '                <div><a href="${home}place" target="_blank" class="link">홈페이지</a></div>' + 
//             '                <div><a href='+place.place_url+' target="_blank" class="link">홈페이지</a></div>' + 
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

            
            
 			overlay = new daum.maps.CustomOverlay({
		        content: content,
		        map: map,
		        position: marker.getPosition()       
	   		 });
	    }

		// 위치 선택완료
		function displayLoc(marker, place){
			var content = '<div class ="label"><span class="left"></span><span class="center">위치선택완료!</span><span class="right"></span></div>';
			overlay = new daum.maps.CustomOverlay({
		        content: content,
		        map: map,
		        position: marker.getPosition()       
	   		 });
		}
	    
	     // 검색결과 목록의 자식 Element를 제거하는 함수입니다
	    function removeAllChildNods(el) {  
	        while (el.hasChildNodes()) {
	            el.removeChild (el.lastChild);
	        }
	    }

	    function panTo(latLng) {
	        // 지도 중심을 부드럽게 이동시킵니다
	        // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
	        map.panTo(latLng);            
	    }        
	    
		 // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	    function closeOverlay() {
			if(overlay!=null)       overlay.setMap(null);     
	    }
		 
		function addPerson(){
			cnt_ppl++;
			var div = document.getElementById('addPerson');
			var div2 = document.getElementById('addPerson2');
			var tmpArr = new Array();
			
			for(var i=0;i<cnt_ppl-2;i++){
				tmpArr[i] = document.getElementById("keyword"+(i+1));
			}
			
			div.innerHTML += '<form class="form-inline"' +
			'	onsubmit="searchPlaces(\'keyword'+cnt_ppl+'\'); return false;"' +
			'	style="flex-flow: inherit;">' +
			'	<input class="form-control"'+
			'	type="text" value="" id="keyword'+cnt_ppl+'" size="15">'+
			'	<button type="submit" class="btn btn-primary">검색하기</button>'+ 
			'	</form>';
			
			div2.innerHTML += '<input type="hidden" class="form-control"'+ 
			'	id="ppl'+cnt_ppl+'" name="ppl" >';
			
			for(var i=0;i<cnt_ppl-2;i++){
				document.getElementById("keyword"+(i+1)) = tmpArr[i];
			}
		}
		
		//반경 1km내의 상업시설들을 검색하는 함수. 해당하는 카테고리명으로 검색함
	    function searchPlacesFromMid(keyword) {
	    	closeOverlay();
	    	circle.setMap(map);
 	        ps.keywordSearch( keyword, placesSearchCB,{
	        	location: new daum.maps.LatLng(${calRst}),
	        	radius: ${rad}
			})
	    }
		
		//컨트롤러에서 중간지점 계산해서 페이지 리로딩 후에 실행되는 함수.
		//중간지점 바로 위에 "중간지점은 여기입니다"하고 윈도우를 띄워줌.
	    function displayMidOverlay(position) {
	        var content = 
	        '<div class="wrap">' + 
	        '    <div class="info">' + 
	        '        <div class="title">' + '중간지점' + 
	        '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
	        '        </div>' + 
	        '        <div class="body">' + 
	        '            <div class="img">' +
	        '                <img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
	        '           </div>' + 
	        '            <div class="desc">' + 
	        '                <div class="message1">'+'중간지점입니다. '+' </div>' + 
	        '                <div class="message2">'+'해당 구역에서 장소를 추천받으시겠어요?'+' </div>' + 
	        '                <button id="recommend" type="button" onclick="searchPlacesFromMid()">'+'추천받기'+'</button>' + 
	        '            </div>' + 
	        '        </div>' + 
	        '    </div>' +    
	        '</div>'; 
			overlay = new daum.maps.CustomOverlay({
		        content: content,
		        map: map,
		        position: position.getPosition() 
	   		 });
	    }
		
		function removeWrap(){
			document.getElementById('option').innerHTML = 
				'<a href="${home }map" class="btn btn-primary text-white">다시 검색하기</a>';
		}
		
		function checkSearchText(){
			var search_texts = document.getElementsByName('ppl');
	     	var isOk = true; 
	     	var ppl = [];
	     	
			for(var i=0;i<search_texts.length;i++){
				var tmp = search_texts[i].value.replace(/\s|　/gi, '');
		        // 정규식으로 공백, 엔터, 탭, 특수문자 공백 문자를 빈문자로 바꿈
		        // 입력된 값에 대하여 위 정규식 처리를 하고 뭔가 남아있지 않다면
		        // 값이 무의미 하다고 판단함.
		 		
		        if(tmp == ''){
		            alert((i+1)+'번째 장소가 지정되지 않았습니다.');
		        	isOk = false;
		        }
		        ppl.push(search_texts[i].value);
			}
			
			if(isOk){
				//이 부분에 ajax를 입력.
				$.ajaxSettings.traditional = true; //ajax가 배열을 전송할 수 있게 함
				$.ajax({
			        data : {ppl:ppl},
			        type : "POST",
			        url : "${home }map/calMid2",
			        datatype : "json",
			        success : function(data) {
			            removeMarker();
			            closeOverlay();
			            
			            var pos = data.calRst.split(', ');
			            var x = Number(pos[0]);
			            var y = Number(pos[1]);
			            
			          	
			            markerPosition  = new daum.maps.LatLng(x, y);
			            var midMarker = new daum.maps.Marker({
					        position: markerPosition
					    });
						
			            //지도의 중심 좌표 재설정
			            map.setCenter(markerPosition);
			            circleOn();
			            
					    // 마커가 지도 위에 표시되도록 설정합니다
					    midMarker.setMap(map);
				    	displayMidOverlay(midMarker);
				    	
				    	//좌측의 검색창을 없앤다.
				    	removeWrap();
				    	
			    	    for(var i=0; i<userMarkers.length; i++){
			    	    	userMarkers[i].setMap(map);
			    	    }
			        } 
			    });
				//document.getElementById("searchMidFrm").submit();
			}
		}
	$(document).ready(function(){
		$('a[href^="#"]').on('click', function(event) {

		    var target = $(this.getAttribute('href'));
			
		    if( target.length ) {
		        event.preventDefault();
		        $('html, body').stop().animate({
		            scrollTop: (target.offset().top-57)
		        }, 1000);
		    }
		    $("li[class='nav-item'] a").attr('class','nav-link');
		    $(this).addClass('text-white');
		});
	});
	
	//카테고리별 검색에 사용할 배열
	var categories = ["PC방", "당구장", "맛집", "카페", "주점"];
	
	//카테고리를 버튼화
	function buttonation(categories){
		var button = "";
		for(var i=0; i<categories.length; i++){
			button += '<button class="category" type="button" onclick="searchPlacesFromMid(\'' + 
						categories[i] + '\')">' + categories[i] + '</button>'
		}
		return button;
	}
	
	//중간지점 지정 후 "추천받기" 누르면 버튼 메뉴 표시
	$(document).ready(function(){
		$("#recommend").on('click', function(event) {
			$('<div id="cate_wrap" class="bg_black">'+ 
				buttonation(categories) +
			    '</div>').appendTo("#map"),
		    $(".category").on('click', function(event) {
				$("#cateinfo").remove(),
		    	$("#option").prepend("<div id='cateinfo'><b><h5>"+$(this).text()+"</h5></b> 검색 결과입니다.<br></div>")
			})
		})
	});
	
	
    </script>    
    
  </body>
</html>
