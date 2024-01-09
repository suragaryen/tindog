<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<body>
	<jsp:include page="/WEB-INF/views/common/header-login.jsp"></jsp:include>
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
				    	${item.DNAME}
				    </td>
				    <td style="text-align: center;"><input type="button" value="팔로우취소" onclick="followCancel('${item.EMAIL}')"></td>
				    <td style="text-align: center;"><input type="button" value="채팅하기" onclick="checkGum('${item.NICKNAME}')"></td>
				</tr>
				</c:forEach>
			</table>
			</div>
		</div>
		
			</form>
		
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
	<script>var s_nickname = '<%=(String)session.getAttribute("s_nickname")%>'</script>
	<script>
		function checkGum(nickname) {
			$.ajax({
				url     : '/chatList/checkGum' // 요청 명령어
			  , type    : 'post'
			  , data    : {'s_nickname': s_nickname}
			  , success : function(result) {
				  // alert(result);
				  console.log(result);
				  if(result>=1) {
					  if(confirm("개껌이 1개 소모됩니다\n진행할까요?")) {
						  startChat(nickname);
						}
				  } else {
					  alert("개껌을 충전해야합니다")
				  }
			  }
			  , error : function(error) {
				  alert("실패!");
				  alert(JSON.stringify(error));
				  console.log(JSON.stringify(error));
			  } 
			});
		}
	
		function startChat(nickname) {
			alert(nickname);
			$.ajax({
				url     : '/chatList/insert' // 요청 명령어
			  , type    : 'post'
			  , data    : {'nickname': nickname}
			  , success : function(result) {
				  // alert(result);
				  console.log(result);
				  if(result==1) {
					  alert("채팅방이 개설되었습니다");
				  } else if(result==-1) {
					  alert("채팅방이 개설되지 않았습니다");
				  } else if(result==0) {
					  alert("이미 개설된 채팅방이 있습니다");
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
	<script>
	function followCancel(email) {
		alert(email);
		$.ajax({
			url     : '/follow/delete/' + email // RESTfull방식으로 웹서비스 요청 예) /comment/delete/5
		  , type    : 'post'
		  , data    : {'email':email}
		  , success : function(result) {
					  	  if(result==1) {
					  		  alert("팔로우 취소되었습니다");
					  		  document.followfrm.action="/follow";
							  document.followfrm.submit();
					  }else {
						  alert("팔로우 취소를 실패했습니다");
					  }
			}
		});
	}
	</script>
	<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
