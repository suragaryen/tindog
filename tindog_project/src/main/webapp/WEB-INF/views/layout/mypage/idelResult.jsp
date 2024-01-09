<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<style>
.winner{
	position:relative;
	top:50px;
	left:350px;
	display:block;
}

#winnerInfo{
	position:relative;
	top:150px;
	display:block;
}
</style>
<body class="wrapper">
<jsp:include page="/WEB-INF/views/common/header-login.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>
	<div class="cont">
		<c:forEach var="item" items="${list}">
			<div id="img-round16-container" class="winner">
				<img id="img-round16" src="/img/Winner.png">
			</div>

			<div id="winnerInfo" class="text-center mx-auto mb-5 wow fadeInUp"
				data-wow-delay="0.1s" style="margin-top: 50px;">
				<div class="card" style="width: 25rem;">


					<img src="/img/${item.MAINPHOTO}" class="img-fluid rounded-start"
						alt="...">

					<h5 class="card-title">${item.DNAME}(${item.AGE})</h5>
					<table style="width: 400px">
						<tr>
							<th><img width="24" height="24"
								src="https://img.icons8.com/material/24/female.png" alt="female" /></th>
							<td>${item.SEX eq 'f' ? '여' : '남'}/ 중성화${item.NEUTRAL}</td>
						</tr>
						<tr>
							<th><img width="24" height="24"
								src="https://img.icons8.com/material-rounded/24/dog.png"
								alt="dog" /></th>
							<td><c:choose>
									<c:when test="${item.SIZE eq 1}">
			                    소형견
			                </c:when>
									<c:when test="${item.SIZE eq 2}">
			                    중형견
			                </c:when>
									<c:when test="${item.SIZE eq 3}">
			                    대형견
			                </c:when>
									<c:otherwise>
			                    기타 크기
			                </c:otherwise>
								</c:choose> / ${item.WEIGHT} kg</td>
						</tr>
						<tr>
							<th><img width="24" height="24"
								src="https://img.icons8.com/material/24/sheet-of-paper.png"
								alt="sheet-of-paper" /></th>
							<td><div>${item.DOG_DETAIL}</div></td>
						</tr>
					</table>


				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
    