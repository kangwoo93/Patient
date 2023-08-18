<%@ page import="member.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.Time"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>SC 스위트케어 | 회원정보</title>
<%@ include file="/header-import.jsp"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">

<style>
.button special{
	weight: 400px;
	height: 200px;
}
</style>

</head>

<script>
function caretaker() {
	window.location.href = "../admin/admin_caretaker.jsp";
}
function caregiver() {
	window.location.href = "../admin/admin_caregiver.jsp";
}
function reservation() {
	window.location.href = "../admin/admin_reservation.jsp";
}
</script>

<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>

<body>
	<%@ include file="/header.jsp"%>

	<!-- One -->
	<section id="One" class="wrapper style3">
		<div class="inner">
			<header class="align-center">
				<p>Eleifend vitae urna</p>
				<h2>SC SuiteCare</h2>
			</header>
		</div>
	</section>

	<!-- Two -->
	<section id="two" class="wrapper style2">
		<div style="text-align: center;" class="form_button">
			<input type="button" class="button" onclick="caretaker();" value="회원 정보 보기 →">
		</div>
		<div style="text-align: center;" class="form_button">
			<input type="button" class="button special" onclick="caregiver();" value="간병인 정보 보기 →">
		</div>
		<div style="text-align: center;" class="form_button">
			<input type="button" class="button alt" onclick="reservation();" value="예약 정보 보기 →">
		</div>
	</section>

	<%@include file="/footer.jsp"%>
</body>

</html>