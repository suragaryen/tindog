<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>

<div class="modal" id="modal">
   	<div class="modal_body">
		<h3>이상형 월드컵 결과</h3>
		<div>1등</div>
		<div>2등</div>
		<div>3등</div>
		<div>4등</div>
		<span class="close" id="closeModalBtn"> X </span>   
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>