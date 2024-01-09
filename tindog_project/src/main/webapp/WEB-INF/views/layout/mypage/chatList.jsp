<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<body class="wrapper">
	<jsp:include page="/WEB-INF/views/common/header-login.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>

<div class="cont">
		<div class="userInfoText">
			<div style="border-bottom: solid 1px darkgrey;">채팅목록</div>
		</div>
		<div style="color: black;" class="userInfo">
			<div id="image_container mainPic_container">
				 <%-- <img src="storage/${item.userphoto}" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" /> --%>
			</div>
			
			<form name="followfrm" id="followfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="4">닉네임</th>
				</tr>
				<c:forEach var="item" items="${list}">	
				<tr>
					<td style="text-align: left" colspan="2">
						<c:choose>
							<c:when test="${item.NICKNAME_TO == s_nickname}">
				    			${item.NICKNAME_FROM}
				    		</c:when>
				    		<c:when test="${item.NICKNAME_FROM == s_nickname}">
				    			${item.NICKNAME_TO}
				    		</c:when>
						</c:choose>
				    	
				    </td>
				    <td style="text-align: center;">
				    <input type="button" value="팔로우취소" class="btn btn-outline-info btn-sm">
				    </td>
				    <td style="text-align: center;">
				    <input type="button" value="채팅하기" onclick="location.href='chat/${item.DROOMNO}'" class="btn btn-outline-info btn-sm">
				    </td>
				    <!-- <td style="text-align: center;"><input type="button" value="채팅하기" onclick="location.href='chat'"></td> -->
				</tr>
				</c:forEach>
			</table>
			</div>
		</div>
		
			</form>
	<script>var s_nickname = '<%=(String)session.getAttribute("s_nickname")%>'</script>
	<script src="/js/chat.js"></script>		
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>

</body>
</html>
