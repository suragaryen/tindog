<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body class="wrapper">
<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>
	
<div class="cont">
	<div class="userInfoText">
		<div style="border-bottom: solid 1px darkgrey;"> 유저관리</div>
	</div>
	<div style="color: black;" class="userInfo text-center">
		<div class="text-center">
			<form name="managementfrm" id="managementfrm" method="post">
				<table class="table">
					<tr>
						<th style="text-align: center;">이메일</th>
						<th style="text-align: center;">이름</th>
						<th style="text-align: center;">닉네임</th>
						<th style="text-align: center;">회원등급</th>
						<th style="text-align: center;">개껌갯수</th>
					</tr>
					<c:forEach var="item" items="${list}">
					<tr>
						<td><input type="text" value="${item.EMAIL}" class="form-control" id="inputEmail4" readonly></td>
		    			<td><input type="text" value="${item.NAME}" class="form-control" id="inputEmail4" readonly></td>	
		    			<td><input type="text" value="${item.NICKNAME}" class="form-control" id="inputPassword4" readonly></td>	
		    			<td><input type="text" value="${item.MEMGRADE}" class="form-control" id="inputEmail4" readonly></td>	
		    			<td><input type="text" value="${item.GUMQTY}" class="form-control" id="inputPassword4" readonly></td>
					</tr>
					</c:forEach>
				</table>
				<c:if test="${requestScope.count > 0}">
		<c:set var="pagecnt" value="${requestScope.totalPage}"/>
		<c:set var="Pagestart" value="${requestScope.Pagestart}"/>
		<c:set var="Pageend"   value="${requestScope.Pageend}"/>
		
		<div class="content">
			
			<c:if test="${Pageend > pagecnt}">	
				<c:set var="Pageend" value="${pagecnt}"></c:set>
			</c:if>
			
			
			<c:if test="${Pagestart > 1}">
				<a href="./management?pageNum=${Pagestart-1}">[이전]</a> 
			</c:if>
			
		
			<c:forEach var="i" begin="${Pagestart}" end="${Pageend}">
				<c:choose>
					<c:when test="${pageNum == i}"><span style="color: blue">${i}</span></c:when>
					<c:when test="${pageNum != i}"><a href="./management?pageNum=${i}">[${i}]</a></c:when>
				</c:choose>
			</c:forEach>
			
			<c:if test="${Pageend < pagecnt}">
				<a href="./management?pageNum=${Pageend+1}">[다음]</a>
			</c:if>
		</div>
	</c:if>  
			</form>
		</div>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
    