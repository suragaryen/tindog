<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/mypageIndex.jsp"></jsp:include>
<div class="cont">
		<div class="userInfoText">
			<div style="border-bottom: solid 1px darkgrey;"> 유저정보</div>
		</div>
		<div style="color: black;" class="userInfo">
			<div id="image_container mainPic_container">
				 <img src="img/defaultImg.jpg" alt="기본 이미지" id="userDefaultImg"  style="width: 50%" />
			</div>
			<table class="table">
				<tr>
				    <th>이름</th>
				    <td style="text-align: left">
				    	<div></div>
				    </td>
				</tr>
				<tr>
				    <th>이메일</th>
				    <td style="text-align: left">
					<div></div>
				    </td>
				</tr>
				<tr>
				    <th>닉네임</th>
				    <td style="text-align: left">
				    <div"></div>
				    </td>
				</tr>
				<tr>
				    <th>생년월일</th>
				    <td style="text-align: left">
				    	<div"></div>
				    </td>
				</tr>
				<tr>
				    <th>주소</th>
				    <td style="text-align: left">
				    	경기도 화성시 ...
				    </td>
				</tr>
			</table>
			</div>
		</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>
    