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
<style>

  </style>
  <body>
  <nav class="navbar navbar-expand-md bg-secondary navbar-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="#">Yahmanaza</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">How about here?</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Come with us</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-white" href="#">Contact us</a>
          </li>
        </ul>
        <form class="form-inline m-0">
          <input class="form-control mr-2" type="text" placeholder="Search">
          <button class="btn btn-primary" type="submit">검 색</button>
        </form>
      </div>
    </div>
  </nav>
<div class="map_wrap">
 <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
    <div id="menu_wrap" class="bg_white">
		<div class="option">
			<form class="form-inline" onsubmit="searchPlaces('keyword');  return false;" style="flex-flow: inherit;">
				<input class="form-control" placeholder="나의 위치는?" type="text" value="" id="keyword" size="15"> 
				<button type="submit" class="btn btn-primary">검색하기</button>
			</form>
	       	<form class="form-inline" onsubmit="searchPlaces('keyword2'); return false;" style="flex-flow: inherit;">
				<input class="form-control" placeholder="친구의 위치는?" type="text" value="" id="keyword2" size="15"> 
				<button type="submit" class="btn btn-primary">검색하기</button> 
			</form> 
			<div id="addPerson"></div>
			<button class="btn btn-lg" onclick="addPerson();" aria-label="Plus">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</button>
		</div>
        <hr>
        <ul id="placesList" style="padding:0;font-size:12px;"></ul>
        <div id="pagination"></div>
    </div>
</div>
<form action="${home }map/calMid" method="post"> 
  <div class="form-group">
    <label for="myLoc">나의 위치</label>
    <input type="text" class="form-control" id="myLoc" name="myLoc" placeholder="나의 위치는?">
  </div>
  <div class="form-group">
    <label for="yourLoc">친구의 위치</label>
    <input type="text" class="form-control" id="yourLoc" name="yourLoc" placeholder="친구의 위치는?">
  </div>
  <button type="submit" class="btn btn-default">제출</button>
</form>
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
// 	        if("1"==${isFindCenter}) //1이면 마커이미지, 오버레이 변경해야함
	    });

	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker.setMap(map);

	    // 장소 검색 객체를 생성합니다
	    var ps = new daum.maps.services.Places();  

	    // 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다 -> 오버레이로 대체
// 	    var infowindow = new daum.maps.InfoWindow({zIndex:1});
	    var overlay = null;
	    
	    // 위치 검색이 누구 것인지 판별
	    var mine = true;
	    
	    // 친구 몇명인지 카운트
	    var cntFs = 1;
	    
	    // 키워드로 장소를 검색합니다
// 	    searchPlaces('keyword');
	    
	    //중간지점위커스텀오버레이표시.autoOverlay
	    if(${autoOverlay}==true){
	    	//커스텀 오버레이를 표시하는 함수를 여기에서 실행하자
	    	//(중간지점은 ~~입니다.)
			//(주변의 약속장소를 추천받으시겠어요?)
			//(예)
			//주소로 검색한 결과값? ㄴㄴ 걍 마커만 있음
	    	displayMidOverlay(marker);
	    }
	    
	    // 키워드 검색을 요청하는 함수입니다
	    function searchPlaces(id) {
			var keyword = document.getElementById(id).value;
	        if (!keyword.replace(/^\s+|\s+$/g, '')) {
	            alert('키워드를 입력해주세요!');
	            return false;
	        }

	        // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
	        if("keyword"==id)   	mine = true;      		
	        else		        	mine = false;
	        
	        //키워드검색(가까운 지하철역으로 검색)
// 	        ps.keywordSearch( keyword, placesSearchCB, {
// 	        	category_group_code: 'SW8'
// 	        }); 

	        ps.keywordSearch( keyword, placesSearchCB);
	        
	        //37.53445310867016 이고, 경도는 126.99400349382537 (이태원역)
// 	        ps.keywordSearch( keyword, placesSearchCB,{
// 	        	location: new daum.maps.LatLng(${calRst}),
// 	        	radius: ${rad}
// 	        });
	        
	        //카테고리검색
//         	ps.categorySearch('SW8', placesSearchCB,{
//         		location: ps.keywordSearch( keyword, placesSearchCB);
//         	});
	    }

	    // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	    function placesSearchCB(data, status, pagination) {
	        if (status === daum.maps.services.Status.OK) {

	            // 정상적으로 검색이 완료됐으면
	            // 검색 목록과 마커를 표출합니다
	            displayPlaces(data);

	            // 페이지 번호를 표출합니다
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
	    function displayPlaces(places) {
	        var listEl = document.getElementById('placesList'), 
	        menuEl = document.getElementById('menu_wrap'),
	        fragment = document.createDocumentFragment(), 
	        bounds = new daum.maps.LatLngBounds(), 
	        listStr = '';
	        
	        // 검색 결과 목록에 추가된 항목들을 제거합니다
	        removeAllChildNods(listEl);

	        // 지도에 표시되고 있는 마커를 제거합니다
	        removeMarker();
	        
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
	                	if("1"==${isFindCenter})    	displayInfowindow(marker, place);
	                	else{
	                		
	                	}
	        		});
	                itemEl.onclick = function(){
	                	closeOverlay();
	                	var latlng = marker.getPosition();
	                	if("1"==${isFindCenter}){
	                		displayInfowindow(marker, place);
	                	}else{
	        	    		if(mine)   	document.getElementById('myLoc').value = latlng;
	        	    		else		document.getElementById('yourLoc').value = latlng;
	                	}
        	    		panTo(latlng);
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
            '                <div><a href='+place.place_url+' target="_blank" class="link">홈페이지</a></div>' + 
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
			var div = document.getElementById('addPerson');
			div.innerHTML += '<form class="form-inline"' +
			'	onsubmit="searchPlaces("keyword2"); return false;"' +
			'	style="flex-flow: inherit;">' +
			'	<input class="form-control" placeholder="친구의 위치는?"'+
			'	type="text" value="" id="keyword2" size="15">'+
			'	<button type="submit" class="btn btn-primary">검색하기</button>'+ 
			'	</form>';
		}
			
	    var dataArray = new Array("1", "2", "3");
	    var number = 0;
	    
		//반경 1km내의 상업시설들을 검색하는 함수.
		//존재하는 카테고리별로 모두 검색.(PC방, 당구장, 식당 등)
	    function searchPlacesFromMid(id) {
			var keyword = ["PC방", "당구장", "식당"];
			
			for(var i=0; i<keyword.length;i++){
	 	        ps.keywordSearch( keyword[i], makeDataArrayCB,{
		        	location: new daum.maps.LatLng(${calRst}),
		        	radius: ${rad}
	 	        })
				alert(dataArray[i]);
			}
	    }
	    
		//검색한 카테고리별 결과값들을 저장하기 위한 콜백함수. 중간지점 주변의 지역들을 검색한 후에 실행된다.
	    function makeDataArrayCB(data){
	    	var i = number;
	    	dataArray[i] = data;
	    	number++;
	    	alert(dataArray[i]);
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
	        '                <div class="message2">'+'근처 장소를 추천받으시겠어요?'+' </div>' + 
	        '                <button type="button" onclick="searchPlacesFromMid()">'+'추천받기'+'</button>' + 
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

    </script>    
    
  </body>
</html>
