<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="false" %>
<c:url  var="home" value="/" />
<html>
<body>
	<form action="${home }member/memberForm">
		<input type="submit" value="가입하기" />
		<input type="reset" value="다시쓰기" />
	</form>
</body>
</html>
