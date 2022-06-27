<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/first.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$('.check-all').click(function(){
		$('.ab').prop('checked', this.checked);
	});
});

$(document).ready(function(){
	$('.check-all2').click(function(){
		$('.ab2').prop('checked', this.checked);
	});
});

$(document).ready(function(){
	$('.check-all3').click(function(){
		$('.check-all').prop('checked', this.checked);
		$('.ab').prop('checked', this.checked);
		$('.check-all2').prop('checked', this.checked);
		$('.ab2').prop('checked', this.checked);
	});
});

</script>
</head>
<body>
<form method="post" action="threethree.jsp">
<%
request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
session.setAttribute("name1", name);

String phone = request.getParameter("phone");
session.setAttribute("phone1", phone);


String phonenum = request.getParameter("phonenum");
session.setAttribute("phonenum1", phonenum);
%>
    <div class="full">
	    <table class="ta">
	        <tr  class="head" > 
	            <th colspan="2"><b>개인(신용)정보수집/이용/조회 동의</b><button>X</button></th>
	        </tr> 
	    </table>
	    <div class="td2">운전자보험 가입 설계를 위해서 관련 법률 및 규정에 따라 개인(신용)정보 수집 이용, 조회,제공동의가 필요합니다.</div>
            
            <div class="td2">
                <input type="checkbox" value="all" name="all3" class="check-all3"> 전체동의
            </div>

            <div class="td2">
                <input type="checkbox" value="agrees" name="all" class="check-all"> [필수]보험료 계산/가입을 위한 개인(신용)정보 수집 이용 조회 동의
                <div class="small"><span>&ensp;&ensp;&ensp;&ensp;&ensp; </span>소비자 권익보호에 관한 사항</div>
            	<div class="small"><span>&ensp; </span><input type="checkbox" name="cb1" class="ab"><label> 개인(신용)정보의 수집 이용에 관한 사항</label></div>
            	<div class="small"><span>&ensp; </span><input type="checkbox" name="cb2" class="ab"><label> 개인(신용)정보의 제공에 관한 사항 - 국외 제3자 제공에 관한 사항</label></div>
            	<div class="small"><span>&ensp; </span><input type="checkbox" name="cb3" class="ab"><label> 개인(신용)정보의 조회에 관한 사항</label></div>
            </div>

            <div class="td2">
                <input type="checkbox" value="chooses" name="all2" class="check-all2"> [선택]상품소개를 위한 동의
                <div class="small"><span>&ensp;&ensp;&ensp;&ensp;&ensp; </span>소비자 권익보호에 관한 사항</div>
            	<div class="small"><span>&ensp; </span><input type="checkbox" name="cb4" class="ab2"><label> 개인(신용)정보의 수집 이용에 관한 사항</label></div>
            	<div class="small"><span>&ensp; </span><input type="checkbox" name="cb5" class="ab2"><label> 개인(신용)정보의 제공에 관한 사항</label></div>
            </div>
            
            <input class="mar" type="submit" value="확인">
    
        </div>
</form>
</body>
</html>