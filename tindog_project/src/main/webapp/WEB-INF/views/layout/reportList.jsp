<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<body class="wrapper">
	<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>

<div class="cont">
	<div class="userInfoText">
		<div style="border-bottom: solid 1px darkgrey;">신고목록</div>
	</div>
	<div style="color: black;" class="userInfo">
		<div id="image_container mainPic_container">
				 <%-- <img src="storage/${item.userphoto}" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" /> --%>
		</div>
			
		<form name="dateReportfrm" id="dateReportfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">데이트 신고목록</th>
				</tr>
				<tr>
					<th style="text-align: center;">신고자</th>
					<th style="text-align: center;">대상</th>
					<th style="text-align: center;">신고사유</th>
					<th style="text-align: center;">신고날짜</th>
					<th style="text-align: center;" colspan="2">제재</th>
				</tr>
				<c:forEach var="item" items="${list}">	
				<tr>
				    <td style="text-align: center;">${item.REPORTER}</td>
				    <td style="text-align: center;">${item.REPORTED}</td>
				    <td style="text-align: center;">${item.REASON}</td>
				    <td style="text-align: center;">${item.REPORTDATE}</td>
				    <td><input type="button" value="활동정지하기" class="form-control" onclick="suspended('${item.REPORTED}')"></td>
				    <td><input type="button" value="강제탈퇴" class="form-control" onclick="kick('${item.REPORTED}')"></td>						    	
				</tr>
				</c:forEach>
			</table>
		</form>
		<form name="productReportfrm" id="productReportfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">중고마켓 신고목록</th>
				</tr>
				<tr>
					<th style="text-align: center;">신고자</th>
					<th style="text-align: center;">대상</th>
					<th style="text-align: center;">신고사유</th>
					<th style="text-align: center;">신고날짜</th>
					<th style="text-align: center;" colspan="2">제재</th>
				</tr>
				<c:forEach var="item" items="${list2}">	
				<tr>
				    <td style="text-align: center;">${item.REPORTER}</td>
				    <td style="text-align: center;">${item.REPORTED}</td>
				    <td style="text-align: center;">${item.REASON}</td>
				    <td style="text-align: center;">${item.REPORTDATE}</td>			
				    <td><input type="button" value="활동정지하기" class="form-control" onclick="suspended2('${item.REPORTED}')"></td>
				    <td><input type="button" value="강제탈퇴" class="form-control" onclick="kick('${item.REPORTED}')"></td>			    	
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</div>	
	<script>
		function suspended(reported) {
			$.ajax({
				url     : '/reportList/susCheck/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
			  , type    : 'post'
			  , data    : {'reported':reported}
			  , success : function(result) {
						  	  if(result == "A") {
						  		$.ajax({
									url     : '/reportList/suspended/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
								  , type    : 'post'
								  , data    : {'reported':reported}
								  , success : function(result) {
											  	  if(result==1) {
											  		  alert(reported + "님의 활동이 정지되었습니다");
											  		  document.dateReportfrm.action="/management";
													  document.dateReportfrm.submit();
											  }else {
												  alert(reported + "님의 활동 정지를 실패했습니다");
											  }
									}
								});
						  }else if(result == "C"){
							  $.ajax({
									url     : '/reportList/susTot/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
								  , type    : 'post'
								  , data    : {'reported':reported}
								  , success : function(result) {
											  	  if(result==1) {
											  		  alert(reported + "님의 모든 활동이 정지되었습니다");
											  		  document.dateReportfrm.action="/management";
													  document.dateReportfrm.submit();
											  }else {
												  alert(reported + "님의 활동 정지를 실패했습니다");
											  }
									}
								});
						  }
				}
			});
			
			
			
		}
		
		function suspended2(reported) {
			$.ajax({
				url     : '/reportList/susCheck/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
			  , type    : 'post'
			  , data    : {'reported':reported}
			  , success : function(result) {
						  	  if(result == "A") {
						  		$.ajax({
									url     : '/reportList/suspended2/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
								  , type    : 'post'
								  , data    : {'reported':reported}
								  , success : function(result) {
											  	  if(result==1) {
											  		  alert(reported + "님의 활동이 정지되었습니다");
											  		  document.productReportfrm.action="/management";
													  document.productReportfrm.submit();
											  }else {
												  alert(reported + "님의 활동 정지를 실패했습니다");
											  }
									}
								});
						  }else if(result == "B"){
							  $.ajax({
									url     : '/reportList/susTot/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
								  , type    : 'post'
								  , data    : {'reported':reported}
								  , success : function(result) {
											  	  if(result==1) {
											  		  alert(reported + "님의 모든 활동이 정지되었습니다");
											  		  document.productReportfrm.action="/management";
													  document.productReportfrm.submit();
											  }else {
												  alert(reported + "님의 활동 정지를 실패했습니다");
											  }
									}
								});
						  }
				}
			});
		}
		
		function kick(reported) {
			if(confirm(reported + "님을 강제탈퇴 시키겠습니까?")) {
				$.ajax({
					url     : '/reportList/kick/' + reported // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
				  , type    : 'post'
				  , data    : {'reported':reported}
				  , success : function(result) {
						if(result==1) {
							alert(reported + "님이 강제탈퇴 되었습니다");
							document.dateReportfrm.action="/management";
							document.dateReportfrm.submit();
						}
				  }
				});
			}
		}
	</script>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>

</body>
</html>
