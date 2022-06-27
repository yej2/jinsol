<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/five.css">
<script src="../js/five.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
            
            String nap1 = (String) session.getAttribute("nap1");
            
            %>
<div>
        <span>다이렉트 운전자보험</span>
        <button class="back" type="button" onClick="location='cancel.jsp'"> X </button>
    </div>
    <div class="full">
    <div class="side1">
        <div class="side1_1">
	        <div class="step" id="steps"><button class="btnfree" onclick="stepshow()">진행단계</button></div>
	        <div class="keep" id="keeps"><button class="btnfree" onclick="keepshow()">설계보관함</button></div>
		</div>
		
		<!-- 진행단계 -->
		<div id="show">
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
        </div>
        </div>
        
        <!-- 설계보관함 -->
        <div id="block">
	        <div>보험시작일 최근순</div>
	        <div class="keepred">step5. 청약내용 확인 > </div>
        	<div class="keepmar"><%=plan1 %></div>
        	<div class="keepmar"><%= now1%> ~ <%= now3%></div>
        	<div class="keepmar">납입방법: <span class="yel">월납</span></div>
        	<div class="keepmar">납입기간: <span class="yel"><%=nap1 %>년</span></div>
        	<div class="keepmar">보험료: <span class="yel"><%=moni %>원</span></div>
        	<div class="keepmar">(설계일:<%=now1 %>)</div>
        </div>
        
        
        
    </div>

    <div class="side2">
        <div class="title">청약 내용을 확인해주세요</div>
        
        <div class="checkform">
	        <table class="dive">
	          <tr>
			    <td>계약자/피보험자</td>
			    <td><%= name1%></td>
			    <td>보험기간</td>
			    <td><%= now1%>~<%= now3%></td>
			  </tr>
			  <tr>
			    <td>주민등록번호</td>
			    <td><%= born1%>******(만 <%=manresult %>세)</td>
			    <td>납입방법</td>
			    <td>월납</td>
			  </tr>
			  <tr>
			    <td>직업</td>
			    <td><%= job2%></td>
			    <td>보험료</td>
			    <td>월 <%= moni%>원(적립보험료:<%= moni2%>원)</td>
			  </tr> 
			  <tr>
			    <td>상품명</td>
			    <td>홍국화재 다이렉트 운전자보험(22.04)</td>
			    <td>청약서 수령</td>
			    <td>이메일</td>
			  </tr>
			  <tr>
			    <td>플랜명</td>
			    <td><%= plan1%></td>
			  </tr>
	        </table>
	     </div>
	     <div class="go1"> *선택하신 직업의 상해급수가 변경되어 가입하신 담보의 가입금액이 변경되었습니다.</div>
	     <div class="go2"> *담보중복 및 한도 초과되는 보장 항목을 제외 후 보험료 계산이 되어 보험료 및 보장내용에 변경이 있습니다.</div>
         <div class="line"></div>
         <div>보장내용</div>
         <table class="tg">
				<thead>
				  <tr>
				    <th class="tg-baqh">보장명</th>
				    <th class="tg-baqh">가입금액</th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <td class="tg-0lax">교통상해사망</td>
				    <td class="tg-0lax">1000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">교통상해후유장해(3~100%)</td>
				    <td class="tg-0lax">1000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">교통상해후유장해(80%이상)(10년간매월지급)</td>
				    <td class="tg-0lax">매월30만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">대중교통이용중교통상해후유장해(3~100%)</td>
				    <td class="tg-0lax">1000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">[특약]자동차사고변호사선임비용Ⅳ</td>
				    <td class="tg-0lax">3000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">[특약]벌금Ⅱ</td>
				    <td class="tg-0lax">3000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">[특약]스쿨존 벌금(2000만원초과 1000만원 한도)</td>
				    <td class="tg-0lax">미가입</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">[특약]무)교통사고합의비용Ⅴ(일반)</td>
				    <td class="tg-0lax">1억원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">[특약]벌금(대물)</td>
				    <td class="tg-0lax">500만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고부상치료비Ⅵ</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해 응급실내원지료비(응급)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해 응급실내원진료비(비응급)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">일반상해수술동반입원비(1~20일)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">종합병원 일반상해입원비(1~180일)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고입원비(1~14급)(1~180일)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고성형치료비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해흉터복원수술비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">골절진단비(치아파절제외)</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">5대골절진단비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">골절수술비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">5대골절수술비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">깁스치료비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">승용차 운전중 보복운전피해보상</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고치아보철치료비</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">강력범죄처리비용</td>
				    <td class="tg-0lax">-</td>
				  </tr>
				</tbody>
			</table>
			
			<div class="checkform1">
				<div>
					<div class="bgo1">*보험모집자:흥국화재해상보험(주) 이유다이렉트</div>
					<div class="bgo1">*보험청약일:<%= now1%></div>
				</div>
					<a class="btn" href="\Downloads\알기쉬운김치제조매뉴얼.pdf" download="청약서">청약서</a>
					<a class="btn" href="\Downloads\알기쉬운김치제조매뉴얼.pdf" download="상품설명서">상품설명서</a>
					<a class="btn" href="\Downloads\알기쉬운김치제조매뉴얼.pdf" download="보험약관">보험약관</a>
			</div>
			
			<div class ="go2">*청약서 및 상품설명서, 약관 다운로드는 필수입니다. 다운로드가 되지 않을 경우 팝업차단을 해제하여 주시기 바랍니다.</div>
        	<div>[필수]청약서, 상품설명서, 보험약관 내용을 모두 읽고 확인하였습니다.</div>
        	<div>보험증권 및 약관은 가입후, 모바일로 받아 보실수 있습니다.<input type="checkbox">확인</div>
        	<div class="go3">청약서, 상품설명서, 보험약관을 클릭하여 모두 확인하셔야 다음단계 진행이 가능합니다.</div>
        	<button>보험료 결제 후 가입완료하기 > </button>
    </div>

    </div>
</body>
</html>