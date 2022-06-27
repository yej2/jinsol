<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/other.css">
</head>
<body>
<form id="gofive" method="post" action="five.jsp">
<%String now1 = (String) session.getAttribute("now1");%>
<div class="full">
	<div class="center">다른 보험 가입사항 확인<button>X</button></div>
	<div class="margins"><%=now1 %>(금일) 기준 고객님께서 가입하신 실손담보 가입내역을 신용정보원을 통해 조회한 결과 안내드립니다.</div>
	<div>업계실손담보 중복가입</div>
		<table class="tg">
			<thead>
			  <tr>
			    <th class="tg-uqo3">회사명</th>
			    <th class="tg-uqo3">담보명</th>
			    <th class="tg-uqo3">보험기간</th>
			    <th class="tg-uqo3">가입금액</th>
			  </tr>
			</thead>
			<tbody>
			  <tr>
			    <td class="tg-baqh">DB손보</td>
			    <td class="tg-baqh"> 자녀배상책임</td>
			    <td class="tg-baqh">2009.01.01~2029.01.01</td>
			    <td class="tg-baqh">1억원</td>
			  </tr>
			</tbody>
		</table>
	<div>가입한도 초과 확인</div>
		<table class="tg2">
			<thead>
			  <tr>
			    <td class="tg2-uqo2">담보명</td>
			  </tr>
			</thead>
		</table>
	<div class="margins">담보중복 및 한도 초과되는 보장 항목을 제외 후, 보험가입 절차를 계속 진행합니다.</div>
	
	<button type="submit" class="center">중복 및 초과 항목 제외 후 보험 가입</button>
</div>
</form>
</body>
</html>