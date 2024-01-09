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
			<div style="border-bottom: solid 1px darkgrey;">팔로우</div>
		</div>
		<div style="color: black;" class="userInfo">
			<div id="image_container mainPic_container">
				 <%-- <img src="storage/${item.userphoto}" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" /> --%>
			</div>
			
			<form name="followfrm" id="followfrm" method="post" enctype="multipart/form-data">
			<table class="table">
				<tr>
				    <th colspan="4">팔로우 상대</th>
				</tr>
				<c:forEach var="item" items="${list}">	
				<tr>
					<td style="text-align: left" colspan="2">
				    	${item.EMAIL}
				    </td>
				    <input type="hidden" name="followNickname" id="followNickname" value="${item.NICKNAME}">
				    <td style="text-align: center;"><input type="button" value="팔로우취소"></td>
				    <td style="text-align: center;"><input type="button" value="채팅하기" onclick="startChat()"></td>
				</tr>
				</c:forEach>
			</table>
			</div>
		</div>
		
			</form>
		
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<script>var s_nickname = '<%=(String)session.getAttribute("s_nickname")%>'</script>
	<script>
		function startChat() {
			let followNickname = $("#followNickname").val();
			// if문으로 개껌 여부 확인 및 차감
			// let insertData = $("#followfrm").serialize();
			// alert(insertData);
			// insertChatRoom(followNickname);
			
			$.ajax({
				url     : '/chatList/insert' // 요청 명령어
			  , type    : 'post'
			  , data    : {'followNickname': followNickname}
			  , success : function(result) {
				  // alert(result);
				  console.log(result);
				  if(result==1) {
					  Swal.fire({
							title:"채팅방 개설 성공",
							text:"상대방 : "+followNickname,
							icon:"success",
							confirmButtonText:"확인"
					});					  
				  } else if(result==-1) {
					 
				  } else if(result==0) {
					   Swal.fire({
							title:"채팅방 개설 실패",
							text:"이미 개설된 채팅방이 있습니다",
							icon:"error",
							confirmButtonText:"확인"
					});					  
				  }
			  }
			  , error : function(error) {
				  alert("실패!");
				  alert(JSON.stringify(error));
				  console.log(JSON.stringify(error));
			  } 
			});
		}
		
	</script>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
