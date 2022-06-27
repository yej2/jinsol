<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/first.css">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String id1 = request.getParameter("id");
session.setAttribute("id1", id1);

String com1 = request.getParameter("com");
session.setAttribute("com1", com1);

%>
<form method="post" action="threestep4.jsp">
	<div class="full">
        <table class="ta">
		        <tr  class="head" > 
		            <th colspan="2"><b>주소검색</b></th>
		        </tr> 
	    </table>
		<input class="mar" type="text" name="location1" placeholder="도로명">
		<input class="mar" type="text" name="deeplocation1" placeholder="상세주소를 입력하세요.">
        <input class="mar" type="submit" value="주소 입력 완료">
    </div>
</form>
</body>
</html>