<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/money.css">
<script src="../js/money.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
      $(function(){
        $('#btn1_1').click(function(){
          $('#span1').text("9000");
          $('#span1_1').attr('value',"9000");
          $('#span2').text("6487");
          $('#span1_2').attr('value',"6487");
          $('#span3').text("61.2");
          $('#span1_3').attr('value',"61.2");
        });

        $('#btn1_2').click(function(){
          $('#span1').text("11000");
          $('#span1_1').attr('value',"11000");
          $('#span2').text("5137");
          $('#span1_2').attr('value',"5137");
          $('#span3').text("39.6");
          $('#span1_3').attr('value',"39.6");
        });

        $('#btn1_3').click(function(){
          $('#span1').text("18000");
          $('#span1_1').attr('value',"18000");
          $('#span2').text("11263");
          $('#span1_2').attr('value',"11263");
          $('#span3').text("53.1");
          $('#span1_3').attr('value',"53.1");
        });
      });
</script>
<title>Insert title here</title>
</head>
<body>
<div>
<%
            request.setCharacterEncoding("UTF-8");
            
            String born = request.getParameter("born");
            String str = born.substring(2);
            String a = (str + "-");
            
            String str2 = born.substring(0,4);
            int num = Integer.parseInt(str2);
            String gender = request.getParameter("gender");
            
            int b = 0;
            if(num < 2000){
            	if(gender.equals("men")){
            	
            		b = 1;
            	}else{
            		b=2;
            	}
            		
            }else{
            	if(gender.equals("men")){
            		b=3;
            	}else{
            		b=4;
            	}
            }
            
            String c = a+b;
            session.setAttribute("born1", c);
            
            int year = Integer.parseInt(born.substring(0,4));
            int month = Integer.parseInt(born.substring(4,6));
            int day = Integer.parseInt(born.substring(6));

            LocalDate today = LocalDate.now();
            int todayYear = today.getYear();
            int todayMonth = today.getMonthValue();
            int todayDay = today.getDayOfMonth();

            int man = todayYear - year;

            if(month > todayMonth){
            	man--;
            	
            }else if(month == todayMonth && day > todayDay){
            	man--;
            }else if(month == todayMonth && day <= todayDay){
            };

            session.setAttribute("mans", man);
            Integer manresult = (Integer) session.getAttribute("mans");
 
            %>
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
                
            
            - 인터넷(<%=c%>******)</div>
        </div>

        <div class="twos">
            <div class="two_re">
                <div>2. 보험료 계산</div>
            </div>   
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
        </div>
        
    </div>

    <div class="side2">
    <form id="gothree" method="post" action="three.jsp">
        <div>보험료를 확인해 주세요</div>
        <div class="color">
            <div class="color1">
                무배당 흥국화재 운전자보험
            </div>
            <div class="color2">
                <div>실 납입 보험료(월)</div>
                <div>적립보험료</div>
                <div>만기환급율</div>
            </div>
            <div class="color3">
            	
                <div><span id="span1">9000</span><span>원</span></div>
                <input id="span1_1"  style="display:none;" type="text" name="moni" value="9000"/>
                <div><span id="span2">6487</span><span>원</span></div>
                <input id="span1_2" style="display:none;" type="text" name="moni2" value="6487"/>
                <div><span id="span3">61.2</span><span>%</span></div>
                <input id="span1_3" style="display:none;" type="text" name="moni3" value="61.2"/>
                <input id="afternow" style="display:none;" type="text" name="afternow" value="3"/>
                <input id="nap" style="display:none;" type="text" name="nap" value="3"/>
                
            </div>
        </div>

        <div class="period">
            <div>보험/납입기간</div>
            <select id = "category" onchange="MyFunction(this);">
                <option value="1" selected>3년납 3년만기</option>
                <option value="2">5년납 5년만기</option>
                <option value="3">7년납 7년만기</option>
                <option value="4">10년납 10년만기</option>
                <option value="5">10년납 15년만기</option>
                <option value="6">10년납 20년만기</option>
                <option value="7">15년납 15년만기</option>
                <option value="8">15년납 20년만기</option>
                <option value="9">20년납 20년만기</option>
            </select>
            <div>납입방법</div>
            <input type="radio" value="owncar" name="drive" checked disabled>월납
        </div>
        <div class="line"></div>
		<c:set var="ymd" value="<%=new java.util.Date()%>" />
		   
        <div class="ymd_color"><span><fmt:formatDate value="${ymd}" pattern="yyyy.MM.dd" /><input name="now" type="text" style="display:none;" value="<fmt:formatDate value="${ymd}" pattern="yyyy.MM.dd" />"/>
        </span> ~ <span id="result">     
        <jsp:useBean id="ourDate" class="java.util.Date"/>
		<jsp:setProperty name="ourDate" property="time" value="${ourDate.time + 94672800000}"/>
		<fmt:formatDate value="${ourDate}" pattern="yyyy.MM.dd"/>
			
		  
        </span><span class="noblack">까지 보장해드립니다.</span></div>
        </form>
        <!-- 표 시작! -->
        <div id="tg_1" style="display:block;">
	        <table class="tg">
				<thead>
				  <tr>
				    <th class="tg-baqh">보장명</th>
				    <th class="tg-baqh"><button autofocus class="one" id="btn1_1">실속플랜<br>9000 원</th></button>
				    <th class="tg-baqh"><button class="two" id="btn1_2">기본플랜<br>11000 원</th></button>
				    <th class="tg-baqh"><button class="three" id="btn1_3">고급플랜<br>18000 원</th></button>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <td class="tg-0lax">교통상해사망</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">5000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">교통상해후유장해(3~100%)</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">5000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">교통상해후유장해(80%이상)(10년간매월지급)</td>
				    <td class="tg-0lax">매월30만원</td>
				    <td class="tg-0lax">매월50만원</td>
				    <td class="tg-0lax">매월80만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">대중교통이용중교통상해후유장해(3~100%)</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">5000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax"><span class="red">[특약]</span>자동차사고변호사선임비용Ⅳ</td>
				    <td class="tg-0lax red">3000만원</td>
				    <td class="tg-0lax red">3000만원</td>
				    <td class="tg-0lax red">3000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax"><span class="red">[특약]</span>벌금Ⅱ</td>
				    <td class="tg-0lax red">3000만원</td>
				    <td class="tg-0lax red">3000만원</td>
				    <td class="tg-0lax red">3000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax"><span class="red">[특약]</span>스쿨존 벌금(2000만원초과 1000만원 한도)</td>
				    <td class="tg-0lax red" >미가입</td>
				    <td class="tg-0lax red">미가입</td>
				    <td class="tg-0lax red">미가입</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax"><span class="red">[특약]</span>무)교통사고합의비용Ⅴ(일반)</td>
				    <td class="tg-0lax red">1억원</td>
				    <td class="tg-0lax red">1억원</td>
				    <td class="tg-0lax red">1억원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax"><span class="red">[특약]</span>벌금(대물)</td>
				    <td class="tg-0lax red">500만원</td>
				    <td class="tg-0lax red">500만원</td>
				    <td class="tg-0lax red">500만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고부상치료비Ⅵ</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">1000만원</td>
				    <td class="tg-0lax">1000만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해 응급실내원지료비(응급)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">2만원</td>
				    <td class="tg-0lax">2만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해 응급실내원진료비(비응급)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">2만원</td>
				    <td class="tg-0lax">2만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">일반상해수술동반입원비(1~20일)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">1만원</td>
				    <td class="tg-0lax">1만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">종합병원 일반상해입원비(1~180일)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">1만원</td>
				    <td class="tg-0lax">1만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고입원비(1~14급)(1~180일)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">7만원</td>
				    <td class="tg-0lax">7만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고성형치료비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">100만원</td>
				    <td class="tg-0lax">100만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">상해흉터복원수술비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">7만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">골절진단비(치아파절제외)</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">10만원</td>
				    <td class="tg-0lax">10만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">5대골절진단비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">20만원</td>
				    <td class="tg-0lax">20만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">골절수술비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">10만원</td>
				    <td class="tg-0lax">20만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">5대골절수술비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">10만원</td>
				    <td class="tg-0lax">10만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">깁스치료비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">10만원</td>
				    <td class="tg-0lax">10만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">승용차 운전중 보복운전피해보상</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">50만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">자동차사고치아보철치료비</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">10만원</td>
				    <td class="tg-0lax">10만원</td>
				  </tr>
				  <tr>
				    <td class="tg-0lax">강력범죄처리비용</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">-</td>
				    <td class="tg-0lax">100만원</td>
				  </tr>
				</tbody>
			</table>
		</div>
	<div class="go">안내</div>
	<div class="go1">-벌금 2와 스쿨존벌금(2000만원초과 1000만원한도)는 동시에 가입할 수 없습니다.</div>
	<div class="go1">-스쿨존벌금(2000만원초과 1000만원한도)은 기존 "벌금(2000만원한도)"보장에 가입된 자에 한아여 가입할 수 있습니다.</div>
	<div class="go2">-자동차사고성형치료비 특별약관,자동차사고치아보철치료비 특별약관은 자가용 운전자에 한하여 가입할 수 있습니다.</div>	
		
	<div><button >이전</button><button type="submit" form="gothree">다음 계약자 상세정보</button></div>
    </div>

    </div>

</body>
</html>