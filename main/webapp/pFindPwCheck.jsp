<%@ page import = "member.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호확인</title>
</head>
<body>
<% 

request.setCharacterEncoding("utf-8");

%>
<%
String name = request.getParameter("name");
String id = request.getParameter("id");
String phone = request.getParameter("phone");

findDAO dao = new findDAO();
int ok_pwd = dao.pPwcheck(name, id, phone);
System.out.println("ok_pwd = " + ok_pwd);

if(ok_pwd==1) {
	String find_pw = dao.pFindPw(name, id, phone);
	//System.out.println(find_pw);
	%>
	<script>
	alert("회원님의 비밀번호는 <%=find_pw%>입니다.");
	location.href='<%=request.getContextPath()%>/patientLogin.jsp';
	</script>
	
	<%
	} else if(ok_pwd==2) {
		System.out.println("아이디 불일치");
	%>
	<script>
	location.href='<%=request.getContextPath()%>/pFindPw.jsp';
	</script>
	
	<%
	} else if(ok_pwd==3) {
		System.out.println("정보 불일치");
	%>
	<script>
	alert("정보가 없습니다.")
	location.href='<%=request.getContextPath()%>/pFindPw.jsp';
	</script>
	<% } %>
</body>
</html>