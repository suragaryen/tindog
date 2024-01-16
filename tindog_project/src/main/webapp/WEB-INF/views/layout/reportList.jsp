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
			
		<form name=chatRoomfrm id="chatRoomfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">데이트 신고목록</th>
				</tr>
				<tr>
					<th style="text-align: center;">신고자</th>
					<th style="text-align: center;">대상</th>
					<th style="text-align: center;">신고사유</th>
					<th style="text-align: center;">신고날짜</th>
				</tr>
				<c:forEach var="item" items="${list}">	
				<tr>
				    <td style="text-align: center;">${item.REPORTER}</td>
				    <td style="text-align: center;">${item.REPORTED}</td>
				    <td style="text-align: center;">${item.REASON}</td>
				    <td style="text-align: center;">${item.REPORTDATE}</td>						    	
				    <!-- <td style="text-align: center;"><input type="button" value="채팅하기" onclick="location.href='chat'"></td> -->
				</tr>
				</c:forEach>
			</table>
		</form>
		<form name="productchatRoomfrm" id="productchatRoomfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">중고마켓 신고목록</th>
				</tr>
				<tr>
					<th style="text-align: center;">신고자</th>
					<th style="text-align: center;">대상</th>
					<th style="text-align: center;">신고사유</th>
					<th style="text-align: center;">신고날짜</th>
				</tr>
				<c:forEach var="item" items="${list2}">	
				<tr>
				    <td style="text-align: center;">${item.REPORTER}</td>
				    <td style="text-align: center;">${item.REPORTED}</td>
				    <td style="text-align: center;">${item.REASON}</td>
				    <td style="text-align: center;">${item.REPORTDATE}</td>						    	
				    <!-- <td style="text-align: center;"><input type="button" value="채팅하기" onclick="location.href='chat'"></td> -->
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</div>
	<script>var s_nickname = '<%=(String)session.getAttribute("s_nickname")%>'</script>	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>

</body>
</html>
