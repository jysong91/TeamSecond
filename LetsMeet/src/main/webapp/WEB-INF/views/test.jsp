<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<c:url value="/resources/" var="res"></c:url>
<c:url value="/" var="home"></c:url>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8"/>
	<link href="${res }css/nav.css" rel="stylesheet" draggable="auto">
	<link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
</head>
<body>
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
</body>
</html>