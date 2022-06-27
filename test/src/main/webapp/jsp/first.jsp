<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/first.css">
<script src="../js/first.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form method="post" action="money.jsp">
<div class="full">
	<table class="ta">

        <tr  class="head" > 
            <th colspan="2"><b>고객정보를 입력해주세요.</b></th>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>생년월일</b></td>    
        </tr>
        <tr   class="col">
            <td > <input type="text" name="born" placeholder="8자리(예:19780125)"></td>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>성별</b></td>    
        </tr>
        <tr   class="col">
            <td ><input type="radio" value="men" name="gender">남자 <input type="radio" value="women" name="gender">여자</td>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>운전여부</b></td>    
        </tr>
        <tr   class="col">
            <td ><input type="radio" value="owncar" name="drive">자가용 <input type="radio" value="businesscar" name="drive">영업용 <input type="radio" value="nocar" name="drive">운전안함</td>
        </tr>

        <tr >
            <td class="td2"><input type="submit" value="이유있는 보험료 계산/가입 시작 > "></td>
        </tr>
        
    </table>
    <!-- 필수 값으로 입력될 수 있도록 하기! 경고창 뜨도록! -->
</div>    
</form>
</body>
</html>