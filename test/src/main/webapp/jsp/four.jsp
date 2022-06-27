<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/four.css">
<script src="../js/four.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
            String plan1 = (String) session.getAttribute("plan1");
            
            String moni = (String) session.getAttribute("moni");
            
            String moni2 = (String) session.getAttribute("moni2");

            String moni3 = (String) session.getAttribute("moni3");

            String now1 = (String) session.getAttribute("now1");

            String now3 = (String) session.getAttribute("now3");
            
            String born1 = (String) session.getAttribute("born1");
            
            String name1 = (String) session.getAttribute("name1");
            
            String phone1 = (String) session.getAttribute("phone1");
            
            String phonenum2 = (String) session.getAttribute("phonenum1"); 

            String job2 = (String) session.getAttribute("job1");
            
            String id2 = (String) session.getAttribute("id1");
            
            String com2 = (String) session.getAttribute("com1");
            
            String location2 = (String) session.getAttribute("location2");

            String deeplocation2 = (String) session.getAttribute("deeplocation2");
            
            Integer manresult = (Integer) session.getAttribute("mans");
            
%>
	<div>
        <span>다이렉트 운전자보험</span>
        <button class="back" type="button" onClick="location='cancel.jsp'"> X </button>
    </div>
    <div class="full">
    <div class="side1">
        <div class="side1_1">
	        <div class="step" id="steps"><button class="btnfree" >진행단계</button></div>
	        <div class="keep" id="keeps"><button class="btnfree" >설계보관함</button></div>
		</div>

        <div class="ones">
            <div class="one_re">
                <div>1. 고객정보</div>
                <div><button class="revise1">수정</button></div>
            </div>
            <div>- <%=name1 %>(<%=born1 %>*******)</div>
        </div>

        <div class="twos">
            <div class="two_re">
                <div>2. 보험료 계산</div>
                <div><button class="revise2">수정</button></div>
            </div>
            <div> - 다이렉트 보험료 : <span class="yel"><%= moni%>원</span></div>
            <div> &nbsp; (월납)/<%= plan1%>)</div>
            <div> - <%= now1%>~<%= now3%></div>
        </div>

        <div class="threes">
            <div class="three_re">
                <div>3. 계약자 정보</div>
                <div><button class="revise3">수정</button></div>
            </div>
            <div> - <%= phonenum2%><%= phone1%></div>
            <div> - <%= id2%>@<%= com2%></div>
            <div> - <%= location2%><%= deeplocation2%></div> 
        </div>

        <div class="fours">
            <div class="three_re">
                <div>4. 알릴의무사항</div>
            </div>
        </div>

        <div class="fives">
            <div>5. 보험료 결제</div>
            <div>- 청약내용 확인</div>
            <div>- 보험료 결제 및 가입완료</div>
        </div>
    </div>

    <div class="side2">
        <div class="title">알일 의무사항을 선택해주세요</div>
        <div class="line"></div>
        <div>1. 현재 운전을 하고 있습니까?</div>
        <button id="btnyes1" onclick="onDisplay1()">예</button>
        <button id="btnno1" onclick="offDisplay1()">아니요</button>
        <div id="noneDiv1" class="noneDiv1 checkform" >
        	<table class="dive">
	          <tr>
			    <td><input type="checkbox">승용차(영업용)</td>
			    <td><input type="checkbox">승용차(자가용)</td>
			    <td><input type="checkbox">승합차(영업용)</td>
			  </tr>
			  <tr>
			    <td><input type="checkbox">승합차(자가용)</td>
			    <td><input type="checkbox">화물차(영업용)</td>
			    <td><input type="checkbox">화물차(자가용)</td>
			  </tr>
			  <tr>
			    <td><input type="checkbox">오토바이(영업용)(50cc미만포함)</td>
			    <td><input type="checkbox">오토바이(자가용)(50cc미만포함)</td>
			    <td><input type="checkbox">건설기계</td>
			  </tr>
			  <tr>
			  	<td><input type="checkbox">농기계</td>
			  </tr>
	        </table>
            <div class="text_red">*승용차(자가용),승합차(자가용)외 보험가입은 불가합니다.</div>
        </div>
		<div class="line"></div>

        <div>2. 최근 1년 이내 다음과 같은 취미를 반복적으로 이용하거나 관련 자격증을 가지고 있습니까?</div>
        <div class="text_10">&nbsp; 스쿠버다이빙/스카이다이빙/수상스키/자동차,오토바이 경주/번지점프,빙벽,암벽등산/제트스키/레프팅</div>
        <button id="btnyes2" onclick="onDisplay2()">예</button>
        <button id="btnno2" onclick="offDisplay2()">아니요</button>
        <div  id="noneDiv2" class="checkform">
	        <table class="dive">
	          <tr>
			    <td><input type="checkbox">스쿠버다이빙</td>
			    <td><input type="checkbox">행글라이딩/패러글라이딩</td>
			    <td><input type="checkbox">스카이다이빙</td>
			  </tr>
			  <tr>
			    <td><input type="checkbox">수상스키</td>
			    <td><input type="checkbox">자동차/오토바이 경주</td>
			    <td><input type="checkbox">번지점프</td>
			  </tr>
			  <tr>
			    <td><input type="checkbox">빙벽/암벽등반</td>
			    <td><input type="checkbox">제트스키</td>
			    <td><input type="checkbox">레프팅</td>
			  </tr> 
	        </table>
            <div>선택한 취미 연간 총 활동횟수<input type="text"  placeholder="숫자만 입력">회</div>
            <div>선택한 취미 관련 자격증 명칭<input type="text"  placeholder="자격증 명칭 입력">회</div>
        </div>
		<div class="line"></div>
		
		<div>3. 개인용 이동장치(전동킥보드,전동휠 등을 포함하여 장애인 또는 교통약자가 사용하는 보행보조용 의자차인 전동휠체어,의료용 스쿠터 등은 제외합니다.)를 사용하십니까?</div>
        <div class="text_10">&nbsp; *계속적으로 사용(직업,직무 또는 동호회활동과 출퇴근용도 등으로 주로 사용하는 경우에 한함)하는 경우 기재</div>
        <div class="text_red" id="noneDiv3">&nbsp; *선택하신 사항으로는 인터넷 보험으로 가입하실 수 없습니다.</div>
        <button id="btnyes3" onclick="onDisplay3()">예</button>
        <button id="btnno3" onclick="offDisplay3()">아니요</button>
		<div class="line"></div>
		
		<div>[필수](개인정보)와 직업, 장해 등은 약관에서 정한 알릴의무에 해당합니다.</div>
		<div>정확하게 알려주지 않으면,추후 보험금 지급이 거절되거나 계약이 해지 될 수 있음을 알려드립니다. <input type="checkbox">동의</div>

    <div><button class="top_margin">이전</button><button type="button" onClick="location='other.jsp'">다음 계약자 상세정보</button></div>    
        
    </div>

    </div>

</body>
</html>