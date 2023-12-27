<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header-login.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>
<c:forEach var="item" items="${list}">	
<div class="cont">
		<div class="userInfoText">
			<div style="border-bottom: solid 1px darkgrey;"> 유저정보</div>
		</div>
		<div style="color: black;" class="userInfo">
			<div id="image_container mainPic_container">
				 <img src="img/${item.userphoto}" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" />
			</div>
			
			<table class="table" id="userInfo-table">
				<tr>
				    <th>이름</th>
				    <td style="text-align: left">
				    	${item.name} (${item.sex eq 'f' ? '여' : '남'})
				    </td>
				</tr>
				<tr>
				    <th>이메일</th>
				    <td style="text-align: left">
					${item.email}
				    </td>
				</tr>
				<tr>
				    <th>닉네임</th>
				    <td style="text-align: left">
				    ${item.nickname}
				    </td>
				</tr>
				<tr>
				    <th>생년월일</th>
				    <td style="text-align: left">
				    	${item.birth}
				    </td>
				</tr>
				<tr>
				    <th>주소</th>
				    <td style="text-align: left">
				    	${item.addr} ${item.detailaddr} (${item.post})
				    </td>
				</tr>
			</table>
			</div>
		</div>
		</c:forEach>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
    