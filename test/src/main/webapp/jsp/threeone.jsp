<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/first.css">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
</head>
<body>
<form id="gothreetwo" method="post" action="threetwo.jsp">
    <div class="full">
    <table class="ta">

        <tr  class="head" > 
            <th colspan="2"><b>고객정보를 입력해주세요.</b><button >X</button></th>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>이름</b></td>    
        </tr>
        <tr   class="col">
            <td > <input type="text" name="name" placeholder="계약자 이름 입력"></td>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>주민(외국인)등록번호</b></td>    
        </tr>
        <tr   class="col">
            <td ><input type="text" placeholder="앞 6자리"><span> - </span><input type="text" placeholder="뒤 7자리"></td>
        </tr>

        <tr  class="head"> 
            <td colspan="2"><b>휴대폰번호</b></td>    
        </tr>
        <tr   class="col">
            <td >
            	<select name="phonenum">
            		<option value="010" selected>010</option>
		            <option value="011">011</option>
		            <option value="016">016</option>
		            <option value="017">017</option>
		            <option value="018">018</option>
		            <option value="019">019</option>
        		</select>
        		<span>   </span>
        		<input type="text" name="phone" placeholder="'-'없이 숫자만 입력">
            </td>
        </tr>    
    </table>
    
    
        <div class="td2">
            <input type="radio" value="agree" name="agree" > 보험료 계산/가입을 위한 개인(신용)정보 수집 이용 조회 동의
        </div>

        <div class="td2">* 보험료 산출 및 가입을 위해서는 본인명의 휴대폰, 신용카드. 공인인증서, 카카오페이를 이용한 본인인증이 필요합니다.</div>
        
        <input class="mar" type="submit" value="확인">

    </div>
</form>
</body>
</html>