<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>

 <!-- 1라운드 -->

	<div id="img-round16-container">
		 <img id="img-round16" src="/img/Winner.png">
	</div>
<script>


if (confirm("팔로우 완료 되었습니다. 친구 목록으로 이동하시겠습니까?")) {
	window.location.href = '/userInfo';
} else {
	window.location.href = '/worldcup';
}


</script>



      
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>