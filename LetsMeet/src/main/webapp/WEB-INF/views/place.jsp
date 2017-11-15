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
<form id="frm" action="${home }place/placeInsert" method="post">
<table>
	<tr>
		<td><input type="text" id="placeName" name="placeName" value="placeNameEx01"></td>
	</tr>
	<tr>
		<td><input type="text" id="placeAddr" name="placeAddr" value="placeAddrEx01"></td>
	</tr>
	<tr>
		<td><input type="text" id="outLine" name="outLine" value="outLineEx01"></td>
	</tr>
	<tr>
		<td><input type="text" id="tel" name="tel" value="telEx01"></td>
	</tr>
	<tr>
		<td><input type="submit" value="리뷰쓰기"></td>
	</tr>
</table>
</form>
</body>
</html>