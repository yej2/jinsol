<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = (String) session.getAttribute("id");
String pwd = (String) session.getAttribute("pwd");
Integer age = (Integer) session.getAttribute("age");
String test = (String) session.getAttribute("test");
String moni = (String) session.getAttribute("moni");
String moni2 = (String) session.getAttribute("moni2");
String moni3 = (String) session.getAttribute("moni3");
String plan1 = (String) session.getAttribute("plan1");

String major2 = (String) session.getAttribute("major1");

String born = "19990624";

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

age : <%= manresult %>
</body>
</html>