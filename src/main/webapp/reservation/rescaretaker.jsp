<%@ page import = "reservation.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피간병인 선택</title>
<script>
function checkForm() {
	var selectname=document.getElementById("tname").value;
	if(selectname=="") {
		alert("피간병인 이름을 선택해주세요.");
		return false;
	}
	return true;	
}

function inserttinfo() {
	window.location.href = "../caretaker/takerInfo.jsp";
}
</script>
</head>

<body>
<% 

request.setCharacterEncoding("utf-8");

%>
<%

String m_id = (String)session.getAttribute("m_id");
ReservationDAO dao = new ReservationDAO();

int ok = dao.tinfocheck(m_id);

CaretakerinfoVO vo = new CaretakerinfoVO();

if(ok == 0) {
	System.out.println("정보없음");
%>
	<script>
	alert("등록된 회원정보가 없습니다.");
	location.href='<%=request.getContextPath()%>/caretaker/takerinfo.jsp';
	</script>
	
	<%

	} else if(ok == 1) {
		System.out.println("정보있음");
		
		%> 
		<h3> 피간병인 정보 선택 </h3>
	<form action="./rescaretaker_info.jsp" name="cnameform" onSubmit="return checkForm();">
		<table><tr>
		<td>피간병인 이름</td>
		<td><select name="tname" id="tname">
		<option value="">==선택==</option>
		<%
		List<CaretakerinfoVO> list = dao.listtname(m_id);
		for(int i=0; i<list.size(); i++) {
			CaretakerinfoVO listvo = (CaretakerinfoVO) list.get(i);
			
			String t_name = listvo.getT_name();
	%>		
		<option value=<%=t_name%>><%=t_name%></option>

<%	
	}
	
}
%>
</select></td>
<td><input type="submit" value="선택"></td></tr>
		</table>
		<button type="button" onclick="inserttinfo();">다른 피간병인 정보 등록하기</button>
		</form>
	
</body>
</html>