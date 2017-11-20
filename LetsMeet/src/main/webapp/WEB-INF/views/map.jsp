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
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="${res }css/map.css" rel="stylesheet" draggable="auto">
  </head>
  <body>
  <nav class="navbar navbar-expand-md bg-secondary navbar-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="${home }">Yahmanaza</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="${home }member">회원가입</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#mapSection">지도로 보기</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#listSection">리스트로 보기</a>
          </li>
        </ul>
        <form class="form-inline m-0">
          <input class="form-control mr-2" type="text" placeholder="Search">
          <button class="btn btn-primary" type="submit">검 색</button>
        </form>
      </div>
    </div>
  </nav>
<div class="map_wrap" id="mapSection">
 <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div id="menu_wrap" class="bg_white">
		<div class="option">
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
<div class="py-5 bg-light text-dark" id="listSection">
    <div class="container">
      <div class="row">
        <div class="col-md-4 my-3">
          <div class="card">
            <img class="img-fluid" src="https://pingendo.github.io/templates/sections/assets/features_mac.jpg" alt="Card image">
            <div class="card-body">
            	<h5><b>카드형식</b></h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>우리에게 내일은 없어</b></h5>
          <p class="mt-1"></p>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b>난 오늘만 산다</b></h5>
          <p class="mt-1"></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-4 my-3">
          <div class="card">
            <img class="img-fluid" src="https://pingendo.github.io/templates/sections/assets/features_mac.jpg" alt="Card image">
            <div class="card-body">
            	<h5><b>카드형식</b></h5>
            </div>
          </div>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4" src="https://pingendo.github.io/templates/sections/assets/features_strawberry.jpg">
          <h5><b>우리에게 내일은 없어</b></h5>
          <p class="mt-1"></p>
        </div>
        <div class="col-md-4 my-3">
          <img class="img-fluid d-block mb-4 img-thumbnail" src="https://pingendo.github.io/templates/sections/assets/features_bluetable.jpg">
          <h5><b>난 오늘만 산다</b></h5>
          <p class="mt-1"></p>
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
	    
	    //중간지점인지 판단해서 오버레이 띄워줌.
	    if(${autoOverlay}==true){
	    	// 마커를 생성합니다
		    var midMarker = new daum.maps.Marker({
		        position: markerPosition
		    });

		    // 마커가 지도 위에 표시되도록 설정합니다
		    midMarker.setMap(map);
	    	displayMidOverlay(marker);
	    }else{
	    	// 마커를 생성합니다
		    var marker = new daum.maps.Marker({
		        position: markerPosition
		    });

		    // 마커가 지도 위에 표시되도록 설정합니다
		    marker.setMap(map);
	    }
	    
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
	            alert('검색 결과 중 오류가 발생했습니다.');
	            return;
	        }
	    }
	    
	    function fromMidCB(data, status, pagination) {
	        if (status === daum.maps.services.Status.OK) {
	            displayPlaces(data,true);
	            displayPagination(pagination);
	        } else if (status === daum.maps.services.Status.ZERO_RESULT) {
	            alert('검색 결과가 존재하지 않습니다.');
	            return;
	        } else if (status === daum.maps.services.Status.ERROR) {
	            alert('검색 결과 중 오류가 발생했습니다.');
	            return;
	        }
	    }

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
            '                <div><a href="${home}place" target="_blank" class="link">홈페이지</a></div>' + 
//             '                <div><a href='+place.place_url+' target="_blank" class="link">홈페이지</a></div>' + 
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
 	        ps.keywordSearch( keyword, fromMidCB,{
	        	location: new daum.maps.LatLng(${calRst}),
	        	radius: ${rad}
			})
	    }
	
		//컨트롤러에서 중간지점 계산해서 페이지 리로딩 후에 실행되는 함수.
		//중간지점 바로 위에 "중간지점은 여기입니다"하고 오버레이를 띄워줌.
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
		        position: marker.getPosition() 
	   		 });
	    }
		
		function removeWrap(){
			document.getElementById('menu_wrap').innerHTML = 
				'<a href="${home }map" class="btn btn-primary text-white">다시 검색하기</a>';
		} 
		
		function checkSearchText(){
			var search_texts = document.getElementsByName('ppl');
	     	var isOk = true; 
	     	
			for(var i=0;i<search_texts.length;i++){
				var tmp = search_texts[i].value.replace(/\s|　/gi, '');
		        // 정규식으로 공백, 엔터, 탭, 특수문자 공백 문자를 빈문자로 바꿈
		        // 입력된 값에 대하여 위 정규식 처리를 하고 뭔가 남아있지 않다면
		        // 값이 무의미 하다고 판단함.
		 
		        if(tmp == ''){
		            alert((i+1)+'번째 장소가 지정되지 않았습니다.');
		        	isOk = false;
		        }
			}
			
			if(isOk){
				
				document.getElementById("searchMidFrm").submit();
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
	
	$(document).ready(function(){
		$("#recommend").on('click', function(event) {
			$('<div id="cate_wrap" class="bg_black">'+
			    	'<button type="button" onclick="searchPlacesFromMid(' + "'PC방'" + ')">PC방</button>'+
			    	'<button type="button" onclick="searchPlacesFromMid(' + "'당구장'" + ')">당구장</button>'+
			    	'<button type="button" onclick="searchPlacesFromMid(' + "'맛집'" + ')">식당</button>'+
			    '</div>').appendTo("#map");
			//$(".option").remove(),
			//$("#menu_wrap").append("<div id='searchText'><h4>검색 결과입니다.</h4></div>");
		})
	});
	
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
	
	
    </script>    
    
  </body>
</html>
