<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div id="login">
 
 	 <div id="login-title">
   		 <p class="logintitle">로그인 또는 회원가입</p>
   		 <hr>
  	</div>
  
	<form id="myForm" name="myForm">
  	<div id="login-body">
    	<h3>틴독에 오신 것을 환영합니다.</h3>
    	<input type="text" id="email-login-body" placeholder="이메일">
    	<br>
    	<input type="button" id="btn-login-body" value="계속" onclick="sendIt()">
  	</div>
	</form>
	
	<label><input type="checkbox" value="SAVE" name="c_id">ID저장</label>
			    <br>
			    <a href="/register">회원가입</a>
			    &nbsp;&nbsp;&nbsp;
			    <a href="#">아이디/비밀번호찾기</a> 

  <div id="login-else">
    <hr id="bar">
    <span id="txt">또는</span>
    <hr id="bar">
  </div>

  <div id="login-loginbtn">
    <!-- Kakao 로그인 버튼 노출-->
    <div id="login-kakao"> 
    <a id="kakao-login-btn" href="/oauth2/authorization/kakao" >
        <img src="/img/kakao.jpeg" width="40px" height="40px"  alt="카카오 로그인 버튼" />
    </a>
    </div>
    <div id="login-kakao-txt">
      <p class="sociallogin">카카오 로그인</p>
    </div> 

  <!-- 네이버 로그인 버튼 노출 영역 -->
    <div id="login-naver">
    <a href="/oauth2/authorization/naver">
		<img src="/img/naver.jpeg" width="40px" height="40px"  alt="네이버 로그인 버튼" />
	</a>
    </div>
    <div id="login-naver-txt">
      <p class="sociallogin">네이버 로그인</p>
    </div> 
  </div>
</div>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>