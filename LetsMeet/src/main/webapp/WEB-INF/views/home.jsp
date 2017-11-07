<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<c:url  var="home" value="/" />
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
Adunaa
</h1>
<p>hihihihihi</p>
<button type="button" onclick="location.href='${home}map'">지도로 가기</button>
<form action="${home }member">
	<input type="submit" value="회원가입"/>
</form>
</body>
</html>
