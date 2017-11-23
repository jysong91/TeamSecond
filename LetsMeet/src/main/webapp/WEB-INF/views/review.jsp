<%@ page session="false" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <meta charset="UTF-8">
    <title>리뷰쓰기</title>
<c:url  var="home" value="/" />
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
			alert("${loginId}");
	 	var log=false;
		//여행자유형
		$(".typeBtn1").click(function(){
			log=!log;
			$(".typeBtn1").css("background-color","yellow");
			$(".typeBtn2").css("background-color","white");
			$(".typeBtn3").css("background-color","white");
			$(".typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($(".typeBtn1").val());
		});
			
		$(".typeBtn2").click(function(){
			log=!log;
			$(".typeBtn1").css("background-color","white");
			$(".typeBtn2").css("background-color","yellow");
			$(".typeBtn3").css("background-color","white");
			$(".typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($(".typeBtn2").val());
		});		
		
		$(".typeBtn3").click(function(){
			log=!log;
			$(".typeBtn1").css("background-color","white");
			$(".typeBtn2").css("background-color","white");
			$(".typeBtn3").css("background-color","yellow");
			$(".typeBtn4").css("background-color","white");
			$("#reviewMemberType").val($(".typeBtn3").val());
		});		
		
		$(".typeBtn4").click(function(){
			log=!log;
			$(".typeBtn1").css("background-color","white");
			$(".typeBtn2").css("background-color","white");
			$(".typeBtn3").css("background-color","white");
			$(".typeBtn4").css("background-color","yellow");
			$("#reviewMemberType").val($(".typeBtn4").val());	
		});			
		//별점
		//전반적인 평가
		$( ".reviewAppaisalStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
		     //배열로 만들고 값 하나씩 가져온다
		     $(this).each(function(item){}); 	
			 //여기 this는 function(item)의 item을 나타낸다.
			 if($(this).attr("id")=='1'){
				 $("#reviewAppaisalMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#reviewAppaisalMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#reviewAppaisalMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#reviewAppaisalMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#reviewAppaisalMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					$(this).each(function(item){}); 	
					 //여기 this는 function(item)의 item을 나타낸다.   
					 if($(this).attr("id")=='1'){
						 $("#reviewAppaisalMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#reviewAppaisalMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#reviewAppaisalMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#reviewAppaisalMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#reviewAppaisalMsg").html("<p>아주좋음</p>");
					 }
					 $("#reviewAppaisal").val($(this).attr("id")); 
					 $( ".reviewAppaisalStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $(".reviewAppaisalStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#reviewAppaisalMsg").html("");
			     }); 
			}
		});
		//서비스
		$( ".serviceStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
		     $(this).each(function(item){}); 	
			 //여기 this는 function(item)의 item을 나타낸다.
			 if($(this).attr("id")=='1'){
				 $("#serviceMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#serviceMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#serviceMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#serviceMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#serviceMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					$(this).each(function(item){}); 	
					 //여기 this는 function(item)의 item을 나타낸다.   
					 if($(this).attr("id")=='1'){
						 $("#serviceMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#serviceMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#serviceMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#serviceMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#serviceMsg").html("<p>아주좋음</p>");
					 }
					 $("#serviceScore").val($(this).attr("id")); 
					 $( ".serviceStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $(".serviceStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#serviceMsg").html("");
			     }); 
			}
		});
		//맛
		$( ".tasteStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
		     $(this).each(function(item){}); 	
			 //여기 this는 function(item)의 item을 나타낸다.
			 if($(this).attr("id")=='1'){
				 $("#tasteMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#tasteMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#tasteMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#tasteMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#tasteMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					$(this).each(function(item){}); 	
					 //여기 this는 function(item)의 item을 나타낸다.   
					 if($(this).attr("id")=='1'){
						 $("#tasteMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#tasteMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#tasteMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#tasteMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#tasteMsg").html("<p>아주좋음</p>");
					 }
					 $("#tasteScore").val($(this).attr("id")); 
					 $( ".tasteStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $(".tasteStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#tasteMsg").html("");
			     }); 
			}
		});
		
		//분위기
		$( ".moodStar a" ).mouseenter(function() {
		     $(this).parent().children("a").removeClass("on");
		     //prevAll 선택한거보다 이전에 있던 것들은 선택되게한다.
		     $(this).addClass("on").prevAll("a").addClass("on");
		     $(this).each(function(item){}); 	
			 //여기 this는 function(item)의 item을 나타낸다.
			 if($(this).attr("id")=='1'){
				 $("#moodMsg").html("<p>나쁨</p>");
			 }else if($(this).attr("id")=='2'){
				 $("#moodMsg").html("<p>별로</p>");
			 }else if($(this).attr("id")=='3'){
				 $("#moodMsg").html("<p>보통</p>");
			 }else if($(this).attr("id")=='4'){
				 $("#moodMsg").html("<p>좋음</p>");
			 }else if($(this).attr("id")=='5'){
				 $("#moodMsg").html("<p>아주좋음</p>");
			 }
					 
		     if($(this).addClass("on")){
		    	 $(this).click(function(){
					$(this).addClass("on").prevAll("a").addClass("on");
					$(this).each(function(item){}); 	
					 //여기 this는 function(item)의 item을 나타낸다.   
					 if($(this).attr("id")=='1'){
						 $("#moodMsg").html("<p>나쁨</p>");
					 }else if($(this).attr("id")=='2'){
						 $("#moodMsg").html("<p>별로</p>");
					 }else if($(this).attr("id")=='3'){
						 $("#moodMsg").html("<p>보통</p>");
					 }else if($(this).attr("id")=='4'){
						 $("#moodMsg").html("<p>좋음</p>");
					 }else if($(this).attr("id")=='5'){
						 $("#moodMsg").html("<p>아주좋음</p>");
					 }
					 $("#moodScore").val($(this).attr("id")); 
					 $( ".moodStar a").off('mouseleave');
		    	 });
			     //마우스를 내리면 별점 초기화
		    	 $(".moodStar a").mouseleave(function(){	
			    	 $(this).parent().children("a").removeClass("on");
			    	 $("#moodMsg").html("");
			     }); 
			}
		});
		
		$("#frm").submit(function(data){
			if(data==0){
				history.back();
			}
		});
	});
</script>
<style type="text/css">
.serviceStar {font-size:0; letter-spacing:-4px;}
.serviceStar a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}
.serviceStar a:first-child {margin-left:0;}
.serviceStar a.on {color:#777;}

.tasteStar {font-size:0; letter-spacing:-4px;}
.tasteStar a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}
.tasteStar a:first-child {margin-left:0;}
.tasteStar a.on {color:#777;}

.moodStar {font-size:0; letter-spacing:-4px;}
.moodStar a {
    font-size:22px;
    letter-spacing:0;
    display:inline-block;
    margin-left:5px;
    color:#ccc;
    text-decoration:none;
}
.moodStar a:first-child {margin-left:0;}
.moodStar a.on {color:#777;}
</style>
<body>
<form id="frm" action="${home }review/reviewProc" method="post">
<table>
	<tr>
		<th><input type="text" id="placeName" name="placeName" value="${placeName }"></th>
	</tr>
	<tr>
		<td><input type="text" id="id" name="id" value="${loginId }"></td>
	</tr>
	<tr>
		<td>전반적인 평가</td>
		<td>
			<input type="hidden" id="reviewAppaisal" name="reviewAppaisal">
			<p class="reviewAppaisalStar">
				<c:forEach var="scoreNum" items="${scoreNums }">
					<a href="#" id="${scoreNum }">★</a>
				</c:forEach>
			</p>
		</td>
		<td><p id="reviewAppaisalMsg" style="color:blue"></p></td>
	</tr>
	<tr>
		<th>리뷰제목</th>
		<td><input type="text" id="reviewTitle" name="reviewTitle"></td>
	</tr>
	<tr>
		<th>리뷰내용</th>
		<td><textarea id="reviewContents" name="reviewContents"></textarea></td>
	</tr>
	<tr>
		<th>여행자 타입</th>
		<td><input type="hidden" id="reviewMemberType" name="reviewMemberType"></td>
		<td><button class="typeBtn1" type="button"  value="나홀로 여행" style="background-color: white;">나홀로 여행</td>
		<td><button class="typeBtn2" type="button"  value="커플" style="background-color: white;">커플</td>
		<td><button class="typeBtn3" type="button"  value="가족" style="background-color: white;">가족</td>
		<td><button class="typeBtn4" type="button"  value="친구들" style="background-color: white;">친구들</td>
	</tr>
	
	<c:set var="scoreNums">1,2,3,4,5</c:set>
	
	<tr>
		<td>서비스</td>
		<td>
			<input type="hidden" id="serviceScore" name="serviceScore">
			<p class="serviceStar">
				<c:forEach var="scoreNum" items="${scoreNums }">
					<a href="#" id="${scoreNum }">★</a>
				</c:forEach>
			</p>
		</td>
		<td><p id="serviceMsg" style="color:blue"></p></td>
	</tr>

	<tr>
		<td>맛</td>
		<td>
			<input type="hidden" id="tasteScore" name="tasteScore">
			<p class="tasteStar">
				<c:forEach var="scoreNum" items="${scoreNums }">
					<a href="#" id="${scoreNum }">★</a>
				</c:forEach>
			</p>
		</td>
		<td><p id="tasteMsg" style="color:blue"></p></td>
	</tr>
	
	<tr>
		<td>분위기</td>
		<td>
			<input type="hidden" id="moodScore" name="moodScore">
			<p class="moodStar">
				<c:forEach var="scoreNum" items="${scoreNums }">
					<a href="#" id="${scoreNum }">★</a>
				</c:forEach>
			</p>
		</td>
		<td><p id="moodMsg" style="color:blue"></p></td>
	</tr>

	<tr>
		<td><input type="submit" value="리뷰쓰기" ></td>
	</tr>
</table>
</form>
</body>
</html>
