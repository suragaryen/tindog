<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<body>
	
	<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>

<div class="cont">
	<div class="userInfoText">
		<div style="border-bottom: solid 1px darkgrey; width:170px;">차단 사용자 관리</div>
	</div>
	<div style="color: black;" class="userInfo">
		<div id="image_container mainPic_container">
				 <%-- <img src="storage/${item.userphoto}" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" /> --%>
		</div>
			
		<form name="cutDogListfrm" id="cutDogListfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">차단 강아지 목록</th>
				</tr>
				<c:forEach var="item" items="${list}">	
				<tr>
				    <td>${item.DNAME}</td>
				    <td style="text-align: center;"><input class="btn btn-outline-primary" type="button" value="차단해제" onclick="cutCancel('${item.EMAIL}')"></td>
				    <td style="text-align: center;"><input class="btn btn-outline-primary" type="button" value="신고하기" onclick="location.href='report/${item.NICKNAME}'"></td>				    	
						    	
				    <!-- <td style="text-align: center;"><input type="button" value="채팅하기" onclick="location.href='chat'"></td> -->
				</tr>
				</c:forEach>
			</table>
		</form>
		<form name="productchatRoomfrm" id="productchatRoomfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="6">차단 유저 목록</th>
				</tr>
				<c:forEach var="item" items="${list2}">	
				<tr>
					<td>${item.NICKNAME}</td>
				    <td style="text-align: center;"><input type="button" value="차단해제" onclick="cutCancel('${item.EMAIL}')"></td>
				    <td style="text-align: center;"><input type="button" value="신고하기" onclick="location.href='report2/${item.NICKNAME}'"></td>				    	
						    	
				    <!-- <td style="text-align: center;"><input type="button" value="채팅하기" onclick="location.href='chat'"></td> -->
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>
</div>
	
	<script>var s_nickname = '<%=(String)session.getAttribute("s_nickname")%>'</script>
	<script>
		function cutCancel(email) {
			// alert(email);
			$.ajax({
				url     : '/cut/cancel/' + email // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
			  , type    : 'post'
			  , data    : {'email':email}
			  , success : function(result) {
						  	  if(result==1) {
						  		  alert("차단 해제되었습니다");
						  		  document.cutDogListfrm.action="/cut";
								  document.cutDogListfrm.submit();
						  }else {
							  alert("차단 해제를 실패했습니다");
						  }
				}
			});
		}
	</script>
	<script src="/js/chat.js"></script>		
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>

</body>
</html>
