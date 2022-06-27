var today = new Date();

var year = today.getFullYear();
var month = ('0' + (today.getMonth() + 1)).slice(-2);
var day = ('0' + today.getDate()).slice(-2);


function MyFunction(e){
   
   var selectList = document.getElementById("category")
   
   if(selectList.options[selectList.selectedIndex].value == "1"){
      var today_3 = (year+3) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"3");
      $('#nap').attr('value',"3");
      $('.one').attr("id", "btn1_1");
      $('.two').attr("id", "btn1_2");
      $('.three').attr("id", "btn1_3");
      
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

       $("#btn1_1").trigger("click");
       $("#btn1_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "2"){
      var today_3 = (year+5) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"5");
      $('#nap').attr('value',"5");
      $('.one').attr("id", "btn2_1");
      $('.two').attr("id", "btn2_2");
      $('.three').attr("id", "btn2_3");

      $('#btn2_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6582");
         $('#span1_2').attr('value',"6582");
         $('#span3').text("61.9");
         $('#span1_3').attr('value',"61.9");
       });

       $('#btn2_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("5191");
         $('#span1_2').attr('value',"5191");
         $('#span3').text("42.2");
         $('#span1_3').attr('value',"42.2");
         
       });

       $('#btn2_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("11565");
         $('#span1_2').attr('value',"11565");
         $('#span3').text("55.3");
         $('#span1_3').attr('value',"55.3");
       });

       $("#btn2_1").trigger("click");
       $("#btn2_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "3"){
      var today_3 = (year+7) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"7");
      $('#nap').attr('value',"7");
      $('.one').attr("id", "btn3_1");
      $('.two').attr("id", "btn3_2");
      $('.three').attr("id", "btn3_3");

      $('#btn3_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6615");
         $('#span1_2').attr('value',"6615");
         $('#span3').text("64.1");
         $('#span1_3').attr('value',"64.1");
       });

       $('#btn3_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("5516");
         $('#span1_2').attr('value',"5516");
         $('#span3').text("43.7");
         $('#span1_3').attr('value',"43.7");
       });

       $('#btn3_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("11691");
         $('#span1_2').attr('value',"11691");
         $('#span3').text("56.6");
         $('#span1_3').attr('value',"56.6");
       });

       $("#btn3_1").trigger("click");
       $("#btn3_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "4"){
      var today_3 = (year+10) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"10");
      $('#nap').attr('value',"10");
      $('.one').attr("id", "btn4_1");
      $('.two').attr("id", "btn4_2");
      $('.three').attr("id", "btn4_3");

      $('#btn4_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6674");
         $('#span1_2').attr('value',"6674");
         $('#span3').text("66.0");
         $('#span1_3').attr('value',"66.0");
       });

       $('#btn4_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("5666");
         $('#span1_2').attr('value',"5666");
         $('#span3').text("45.9");
         $('#span1_3').attr('value',"45.9");
       });

       $('#btn4_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("11891");
         $('#span1_2').attr('value',"11891");
         $('#span3').text("58.8");
         $('#span1_3').attr('value',"58.8");
       });

       $("#btn4_1").trigger("click");
       $("#btn4_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "5"){
      var today_3 = (year+15) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"15");
      $('#nap').attr('value',"10");
      $('.one').attr("id", "btn5_1");
      $('.two').attr("id", "btn5_2");
      $('.three').attr("id", "btn5_3");

      $('#btn5_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("5716");
         $('#span1_2').attr('value',"5716");
         $('#span3').text("60.7");
         $('#span1_3').attr('value',"60.7");
       });

       $('#btn5_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("3451");
         $('#span1_2').attr('value',"3451");
         $('#span3').text("30.0");
         $('#span1_3').attr('value',"30.0");
       });

       $('#btn5_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("9379");
         $('#span1_2').attr('value',"9379");
         $('#span3').text("49.8");
         $('#span1_3').attr('value',"49.8");
       });

       $("#btn5_1").trigger("click");
       $("#btn5_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "6"){
      var today_3 = (year+20) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"20");
      $('#nap').attr('value',"10");
      $('.one').attr("id", "btn6_1");
      $('.two').attr("id", "btn6_2");
      $('.three').attr("id", "btn6_3");

      $('#btn6_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("4862");
         $('#span1_2').attr('value',"4862");
         $('#span3').text("55.4");
         $('#span1_3').attr('value',"55.4");
       });

       $('#btn6_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("1425");
         $('#span1_2').attr('value',"1425");
         $('#span3').text("13.3");
         $('#span1_3').attr('value',"13.3");
       });

       $('#btn6_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("7056");
         $('#span1_2').attr('value',"7056");
         $('#span3').text("40.2");
         $('#span1_3').attr('value',"40.2");
       });

       $("#btn6_1").trigger("click");
       $("#btn6_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "7"){
      var today_3 = (year+15) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"15");
      $('#nap').attr('value',"15");
      $('.one').attr("id", "btn7_1");
      $('.two').attr("id", "btn7_2");
      $('.three').attr("id", "btn7_3");

      $('#btn7_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6674");
         $('#span1_2').attr('value',"6674");
         $('#span3').text("68.4");
         $('#span1_3').attr('value',"68.4");
       });

       $('#btn7_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("5658");
         $('#span1_2').attr('value',"5658");
         $('#span3').text("47.4");
         $('#span1_3').attr('value',"47.4");
       });

       $('#btn7_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("11883");
         $('#span1_2').attr('value',"11883");
         $('#span3').text("60.9");
         $('#span1_3').attr('value',"60.9");
       });

       $("#btn7_1").trigger("click");
       $("#btn7_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "8"){
      var today_3 = (year+20) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"20");
      $('#nap').attr('value',"15");
      $('.one').attr("id", "btn8_1");
      $('.two').attr("id", "btn8_2");
      $('.three').attr("id", "btn8_3");

      $('#btn8_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6072");
         $('#span1_2').attr('value',"6072");
         $('#span3').text("66.8");
         $('#span1_3').attr('value',"66.8");
       });

       $('#btn8_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("4232");
         $('#span1_2').attr('value',"4232");
         $('#span3').text("38.1");
         $('#span1_3').attr('value',"38.1");
       });

       $('#btn8_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("10258");
         $('#span1_2').attr('value',"10258");
         $('#span3').text("56.4");
         $('#span1_3').attr('value',"56.4");
       });

       $("#btn8_1").trigger("click");
       $("#btn8_1").focus();
   }
   if(selectList.options[selectList.selectedIndex].value == "9"){
      var today_3 = (year+20) + "." + month + "." + day;
      $("#result").text(today_3);
      $('#afternow').attr('value',"20");
      $('#nap').attr('value',"20");
      $('.one').attr("id", "btn9_1");
      $('.two').attr("id", "btn9_2");
      $('.three').attr("id", "btn9_3");

      $('#btn9_1').click(function(){
         $('#span1').text("9000");
         $('#span1_1').attr('value',"9000");
         $('#span2').text("6621");
         $('#span1_2').attr('value',"6621");
         $('#span3').text("68.6");
         $('#span1_3').attr('value',"68.6");
       });

       $('#btn9_2').click(function(){
         $('#span1').text("11000");
         $('#span1_1').attr('value',"11000");
         $('#span2').text("5495");
         $('#span1_2').attr('value',"5495");
         $('#span3').text("46.6");
         $('#span1_3').attr('value',"46.6");
       });

       $('#btn9_3').click(function(){
         $('#span1').text("18000");
         $('#span1_1').attr('value',"18000");
         $('#span2').text("11713");
         $('#span1_2').attr('value',"11713");
         $('#span3').text("60.7");
         $('#span1_3').attr('value',"60.7");
       });

       $("#btn9_1").trigger("click");
       $("#btn9_1").focus();
   }
};








  
   
  


 
