<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>SC 스위트케어 | 일반 본문</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="../assets/css/main.css" />
	</head>
	<body>
<%@ include file="../header.jsp" %>

	<!-- One -->
			<section id="One" class="wrapper style3">
				<div class="inner">
					<header class="align-center">
						<p>Eleifend vitae urna</p>
						<h2>Generic Page Template</h2>
					</header>
				</div>
			</section>

		<!-- Two -->
			<section id="two" class="wrapper style2">
				<div class="inner">
					<div class="box">
						<div class="content">
							<header class="align-center">
								<p>간병 서비스를 제공받을 분</p>
								<h2>기본 정보 등록</h2>
							</header>
							
							
<%String mid = (String)session.getAttribute("mid"); %>				
							
<script type="text/javascript">
function fn_overlapped(){
	   
	var _id = $("#user_id").val();
    
    if(_id==''){
   	 alert("ID를 입력하세요");
   	 return;
    }
  
    $.ajax({
       type:"post",
       async:false,  
       url:"overlapped.jsp",
       dataType:"text",
       data: {id:_id},
       success:function (data){
    	   console.log(data.replace(/(<([^>]+)>)/ig,""));
    	   
    	   //alert(data);
    	   
          if(data.includes("false")){
       	    alert("사용할 수 있는 ID입니다.");
       	    $('#btnOverlapped').prop("disabled", true);
       	    $('#user_id').prop("disabled", true);
       	    $('#huser_id').val(_id);
          }else{
        	  alert("사용할 수 없는 ID입니다.");
          }
       },
       
       error:function(data,textStatus){
          alert("에러가 발생했습니다. " + textStatus);ㅣ
       },
       complete:function(data,textStatus){
          //alert("작업을완료 했습니다");
       }
    })  //end ajax	 
 }	


</script>

<script >
	function validateForm() {
		console.log('확인');
		var tname = document.Registform.tname.value;
		var tgender = document.getElementsByName("tgender");
		var tage = document.Registform.tage.value;
		var theight = document.Registform.theight.value;
		var tweight = document.Registform.tweight.value;
		var diagnosis = document.Registform.diagnosis.value;
		
		
		if(tname=="") {
			alert("이름을 입력해주세요.");
			return false;
		}

		//성별 확인
//		for(var i=0; i<tgender.length; i++) {
//			if(tgender[i].checked) {
//				selectGen=tgender[i].value;
//				break;
//			}
//		}
		
//		if(selectGen==="") {
//			alert("성별을 선택해주세요");
//			return false;
//		}
		
		if(tage=="") {
			alert("나이를 입력해주세요.");
			return false;
		}
		
		if(theight=="") {
			alert("키를 입력해주세요");
			return false;
		}
		
		if(tweight=="") {
			alert("몸무게를 입력해주세요.");
			return false;
		}
		
		if(diagnosis=="") {
			alert("진단명을 입력해주세요.");
			return false;
		}
		
		return true;
		
		}
</script>

<script>
function goindexForm() {
	location.href="../member/mypage.jsp";
}
</script>


	<!-- form 시작 -->
	<form name="Registform" method="post" onSubmit="return validateForm();" action="./takerInfoCheck.jsp">
		<div class="form_wrapper">
			<div class="form_row">
				<label for="tname">이름</label>
				<div class ="form_row_sub">
				<input class="form-control" type="text" id="tname" name="tname" placeholder="피간병인 이름을 입력하세요.">
				</div>
			</div>
			<br>
			<div class="form_row">
				<label for="tgender">성별</label>
				<input class = "form-control" type="radio" id="man" name="tgender" value="남">
				<label for="man">남자</label>
				<input class = "form-control" type="radio" id="woman" name="tgender" value="여">
				<label for="woman">여자</label> <br><br>
				</div>			
			</div>
			<div class="form_row">
				<label for="tage">나이</label>
				<div class ="form_row_sub">
				<input class="form-control" type="text" id="tage" name="tage" placeholder="피간병인 나이를 입력하세요.">
				</div>
			</div>
			<br>
			<div class="form_row">
				<label for="theight">키(cm)</label>
				<div class ="form_row_sub">
				<input class="form-control" type="text" id="theight" name="theight" placeholder="피간병인 키를 입력하세요.">
				</div>
			</div>
			<br>	
			<div class="form_row">
				<label for="tweight">몸무게(kg)</label>
				<div class ="form_row_sub">
				<input class="form-control" type="text" id="tweight" name="tweight" placeholder="피간병인 몸무게를 입력하세요.">
				</div>
			</div>
			<br>	
			<div class="form_row">
				<label for="diagnosis">진단명</label>
				<div class ="form_row_sub">
				<input class="form-control" type="text" id="diagnosis" name="diagnosis" placeholder="진단명을 입력하세요.">
				</div>
			</div>
			</div>
			<br>				
		<div style="text-align: center;" class="form_btn">
			<input class="button special" type="submit" value=등록 >
			<input class="button special" type="reset" value=초기화>
	 	<!-- <input class="button special" type="hidden" name="command" value="addMember"> -->	
	 		<input class="button special" type="button" value=취소 onClick="goindexForm()">
		</div>
		<br>
		<br>
	</form>
	<!-- form 끝 -->
</div>
</div>
</section>

<%@ include file="../footer.jsp" %>

</body>

</html>