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
	 	var log=false;
		
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
	});
</script>
<body>
<form id="frm" action="${home }review/reviewProc" method="post">
<table>
	<tr>
		<th><input type="text" id="placeName" name="placeName" value="${placeName }"></th>
	</tr>
	<tr>
		<td><input type="text" id="id" name="id" value="hygi"></td>
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
	<tr>
		<td><input type="submit" value="리뷰쓰기" ></td>
	</tr>
</table>
</form>
</body>
</html>
