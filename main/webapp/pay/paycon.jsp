<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
  String test_id = "aaaa"; 
  session.setAttribute("m_id", test_id);
%>
<input type = "button" name = "kakaopay" onclick = "location.href='/suiteCare/Payment/kakao.do'" value = "īī������">
<input type = "button" name = "cardpay" onclick = "location.href='/suiteCare/Payment/card.do'" value = "ī�����">
</body>
</html>