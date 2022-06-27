<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/three.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
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
            <div>
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
            %>
            - 인터넷(<%= born1 %>******)</div>
        </div>

        <div class="twos">
            <div class="two_re">
                <div>2. 보험료 계산</div>
                <div><button class="revise2">수정</button></div>
            </div>
            <div> - 다이렉트 보험료 : <span class="yel"><%= moni%>원</span></div>
            <div> &nbsp; (월납)/<%= plan1 %>)</div>
            <div> - <%=now1 %>~<%=now3 %></div>
        </div>

        <div class="threes">
            <div class="three_re">
                <div>3. 계약자 정보</div>
            </div> 
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
        <div>추가정보를 입력해 주세요</div>
        <div class="box">
            <div class="box_one">
                <span>계약자/피보험자 </span><span>&ensp;<%=name1 %>&ensp;</span><button onclick="location='threeone.jsp'">고객정보 입력</button>
            </div>
            <div>
                <span>주민등록번호 </span><span>&ensp;<%= born1 %>******&ensp;</span><button >고객정보 가져오기</button>
            </div>
            <div class="box_three">
                <span>직업정보 </span><span>&ensp;-&ensp;</span><button onclick="location='threefour.jsp'">직업선택</button>
            </div>
        </div>
        
        <div>연락처</div>
        <button>휴대폰</button><button>자택</button>
        <input type="text" value="<%= phonenum2 %>">
        <span>   </span>
        <input type="text" placeholder="'-' 없이 숫자만 입력" value="<%= phone1 %>">
        
        <div>이메일주소</div>
        <input type="text" placeholder="아이디">
        <span>  @  </span>
        <select>
            <option>이메일 직접입력</option>
            <option>naver.com</option>
            <option>hanmail.net</option>
            <option>hotmail.com</option>
            <option>gmail.com</option>
            <option>nate.com</option>
        </select>
        
        <div>우편물수령처</div>
        <button>주소검색</button><span>&ensp;<input type="text" placeholder="주소입력"></span>
        
        <table class="ta">
			  <tr>
			    <td>사망보험금 수익자</td>
			    <td>법정상속인</td>
			  </tr>
			  <tr>
			    <td>사망외보험금 수익자</td>
			    <td>피보험자본인</td>
			  </tr>
			  <tr>
			    <td>대리청구인</td>
			    <td>보험금 지정대리청구인 신청</td>
			  </tr>
			  <tr>
			    <td>이륜자동차부담보특약가입여부</td>
			    <td><input type="radio" value="yes1" name="yes" checked disabled>예 <input type="radio" value="no1" name="no1" disabled>아니요 </td>
			  </tr>
			  <tr>
			    <td>미국납세의무자</td>
			    <td>미국 납세의무자에 해당하거나 한국이외의 조세목적상 거주지가 있으십니까? <input type="radio" value="yes2" name="ra_2">예 <input type="radio" value="no2" name="ra_2">아니요 </td>
			  </tr>
			  <tr>
			    <td>전자적방법 안내서비스 수신동의여부</td>
			    <td><input type="radio" value="yes1" name="yes2" checked disabled>예 <input type="radio" value="no1" name="no1" disabled>아니요 </td>
			  </tr>
			  <tr>
			    <td>보험증권(약관) 모바일 수령</td>
			    <td><input type="radio" value="yes1" name="yes1" checked disabled>예 <input type="radio" value="no1" name="no1" disabled>아니요 </td>
			  </tr>
			  <tr>
			    <td>전문금융소비자여부</td>
			    <td><input type="radio" value="yes3" name="ra_3">전문금융소비자 <input type="radio" value="no3" name="ra_3">일반금융소비자 </td>
			  </tr>
		</table>
		
		<div class="go">*입력한 이메일로 상품설명서, 청약서, 약관 등이 발행됩니다.</div>
		<div class="go1">*사전에 이유다이렉트에서 설계/가입한 이력이 있는 경우, 이력 기준으로 개인정보(연락처, 이메일등)를 자동으로 등록합니다.</div>
		<div class="go2">&nbsp;고객님의 현재 정보와 일치하는지 반드시 확인해주세요.</div>
		
		
		<table>
			<tr>
				<td><span class="red">[필수]</span>통신수단을 통한 계약해지 및 이메일을 통한 상품설명서 및 청약서 수령에 동의하십니까?</td>
				<td><input name="box" type="checkbox"> 동의</td>
			</tr>
			<tr>
				<td>[선택]스마트폰 및 PC로 해피콜 진행에 동의하십니까?</td>
				<td><input name="box" type="checkbox"> 동의</td>
			</tr>
		</table>
		
    <div><button class="top_margin">이전</button><button>다음 계약자 상세정보</button></div>    
        
    </div>

    </div>
</body>
</html>