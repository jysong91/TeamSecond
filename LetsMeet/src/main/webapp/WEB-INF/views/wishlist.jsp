<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url  var="home" value="/" />
<c:url  var="res" value="/resources/" />
<!DOCTYPE html>
<html>
<script src="${home }resources/js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var loginMsg = "${loginMsg}";
	if(loginMsg!=""){
		alert(loginMsg);
	}
});
</script>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
  <link rel="stylesheet" href="${res }css/icon.css" type="text/css">
  <style type="text/css">
	.table  {border-collapse:collapse;border-spacing:0;width:1100px;padding-top:30px;}
	.table td{font-family:Arial, sans-serif;font-size:14px;padding:9px 7px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;}
	.table th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:9px 7px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;}
	.table {text-align:center;}
	.table {vertical-align:top;}
	.img{
		height:90px;
		width:60px;
	}
	#basket{
		padding-right:800px;
	} 
  </style>
  
</head>

<body>
  <c:import url="/top"/>
	 <!--modal end -->
  <br>
  <br>
  <br>
  <h1 id="c_title" class="display-1 pi-draggable text-center">Title</h1><hr/>
</body>
<body>
  <table class="table">
    <tbody>
      <tr>
        <th colspan="2" style="text-align:center;">장소정보</th>
        <th style="text-align:center;">위치</th>
        <th style="text-align:center;">선택</th>
      </tr>
      <tr>
        <td rowspan="2">
          <img src="&lt;%=book.getImg() %&gt;" class="img"> </td>
        <td rowspan="2">
          <br>
          <br> </td>
        <td rowspan="2">
          <br>
          <br> </td>
        <td>
          <button type="button" class="btn btn-default" onclick="">상세정보보기</button>
        </td>
      </tr>
      <tr>
        <td>
          <button type="button" class="btn btn-default" onclick="">삭제</button>
        </td>
      </tr>
      <input type="hidden" name="bookNo" value="${bookNo }"> </tbody>
  </table>
  <br>
  <table class="table">
    <tbody>
      <tr>
        <th colspan="2" style="text-align:center;"> </th>
        <th style="text-align:center;">
          <button type="button" class="btn btn-default" onclick="window.location='/bookStore/book/bookList.jsp'"></button>
        </th>
        <th style="text-align:center;">
          <input type="submit" id="allSell" class="btn btn-default" value="리뷰쓰러가기"> </th>
      </tr>
    </tbody>
  </table>
  <br>
  <br> 
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
</body>

</html>
