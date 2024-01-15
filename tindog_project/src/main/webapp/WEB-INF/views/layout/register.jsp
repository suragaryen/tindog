<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html>
<link href="/css/regiModal.css" rel="stylesheet">
<style>
#email:hover{
	cursor: pointer;
}

#nickname:hover{
	cursor: pointer;
}

#post:hover{
	cursor: pointer;
}
</style>
<body class="wrapper">
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<!-- was-validated  needs-validation -->

	<div id="regi-form">
        <form class="needs-validation" name="register-form" id="register-form" method="post" action="/register/userInsert" enctype="multipart/form-data" novalidate onsubmit="return validateForm();">			
			<h2 class="joinForm">TINDOG ID 생성</h2>
			<h5>하나의 TINDOG ID로 모든 TINDOG 서비스를 이용할 수 있습니다.</h5>
          <div class="row">
            <div class="textForm">              
              <input type="text" class="form-control" name="name" id="name" placeholder="이름" autocomplete="off" required>
              <div class="valid-feedback"></div>
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
            <div class="textForm">              
              <input type="text" class="form-control" name="nickname" id="nickname" placeholder="닉네임" autocomplete="off" onclick="nickCheck()" readonly required>              
              <div class="valid-feedback">
              
              </div>
              <div class="invalid-feedback">
                2글자 이상 10글자 이하로 작성해주세요. <br>특수문자, 공백은 불가능합니다
              </div>
            </div>            
            <div class="textForm">
            	<div class="little">*생년월일*</div>              	
				<input type="date" class="form-control" name="birth" id="birth" max="2024-06-20" min="1900-01-01">								
            </div>
          <div class="textForm">                    
            <input type="text" class="form-control" name="email" id="email" placeholder="name@example.com" autocomplete="off" onclick="remailCheck()" readonly required>
            <div class="valid-feedback">              
              </div>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
            
          <div class="textForm">              
              <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호" autocomplete="off" required>
              <div class="valid-feedback">
              
              </div>
              <div class="invalid-feedback">
                6글자 이상 20글자 이하로 작성해주세요. <br>특수문자는 (!,@,#,-,_)만 가능합니다
              </div>
           </div>
            
            
           <div class="textForm">
              <input type="password" class="form-control" name="repasswd" id="repasswd" placeholder="비밀번호확인" autocomplete="off" required>
              <div class="valid-feedback">
              
              </div>
              <div class="invalid-feedback">
                 비밀번호를 확인해주세요.
              </div>
           </div>            

		 <div class="textForm">		         
		           <input type="text" class="form-control" name="post" id="post" onclick= "DaumPostcode()" placeholder="우편번호" readonly="readonly">
		          <!-- <button class="btn btn-outline-secondary" type="button" value="주소찾기" onclick= "DaumPostcode()">주소찾기 </button> -->
			      <!-- <input type="button" value="주소찾기" onclick= "DaumPostcode()"> -->   
			      <!-- ----- DAUM 우편번호 API 시작 ----- -->
			  <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
			    <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
			  </div> 
		    <div class="invalid-feedback">
		      우편번호를 입력해주세요.
		    </div>		
		 
          <div>		    
		    <input type="text" class="form-control" name="addr" id="addr" placeholder="주소" required readonly="readonly">
		    <div class="valid-feedback">
              
            </div>
		    <div class="invalid-feedback">
		      
		    </div>
		  </div>
		  <div >		   
			<input type="text" class="form-control" name="detailaddr" id="detailaddr" placeholder="나머지 주소" autocomplete="off" required>
		    <div class="valid-feedback">
              
            </div>
		    <div class="invalid-feedback">
		    	나머지 주소를 입력해주세요.
		    </div>
		  </div>          
		
		</div>
	
		<div class="textForm">
		  <label for="formFile" class="form-label">프로필 사진</label>
		  	<div id="image_container userPic_container" style="margin-bottom:10px;">
				 <img src="img/defaultImg.jpg" alt="기본 이미지" id="uDefault_image" class="img-thumbnail"  style="width: 20%" />
			</div>
		  <input class="form-control" type="file" id="userphotofile" name="userphotofile" accept="image/*">
 		</div>
 		
 	 </div>
 	 	
	  <div id="register-else">
	    <hr id="bar">    
	    <hr id="bar">
	  </div>
 		
 		<h2 class="joinForm">강아지정보</h2>
          <input type="hidden" name="dogorder" value="1">
          
          	<!-- 강아지 이름, 나이 -->
          <div class="row">
            <div class="textForm">              
              <input type="text" name="dname" id="dname" class="form-control" placeholder="강아지 이름" autocomplete="off" required>
              <div class="valid-feedback"></div>
              <div class="invalid-feedback">
                강아지 이름을 입력해주세요.
              </div>
            </div>
            <div class="textForm">
              <input class="form-control" type="number" name="age" id="age" placeholder="강아지 나이" autocomplete="off" required>
              <div class="invalid-feedback">
                강아지 나이를 입력해주세요.
              </div>
            </div>
          </div>
		
	<div class="row">
		<div class="textForm">        
        <input class="form-control" type="number" name="weight" id="weight" placeholder="강아지 무게 : kg" autocomplete="off" required>
        <div class="invalid-feedback">
          강아지 무게를 입력해주세요.
        </div>
      </div>   	
      
      <div class="selectForm">
      	<div class="nobox">
			<div class="title">강아지 성별</div>
			<div class="form-check">
				<input type="radio" name="sex" value="m">
				<label> 남아	</label>
			</div>
			<div class="form-check">
				<input type="radio" name="sex" value="f">
				<label> 여아	</label>
			</div>
			<div class="blank">
			/
			</div>
			<div class="title"></div>
			<div class="title">중성화 여부</div>
			<div class="form-check">
				<input type="radio" name="neutral"	value="o">
				<label> O </label>
			</div>
			<div class="form-check">
				<input type="radio" name="neutral"	value="x">
				 <label> X </label>
			</div>
		</div>
	  </div>          
    <div class="selectForm">
	<div class="input-group mb-3">
	  <label class="input-group-text" for="inputGroupSelect01">강아지 사이즈</label>
	  <select class="form-select" id="size" name="size">
	    <option value="1">소형견</option>
	    <option value="2">중형견</option>
	    <option value="3">대형견</option>
	  </select>
	</div>
	</div>
	<div class="selectForm">          
	<div class="input-group mb-3">
	  <label class="input-group-text" for="inputGroupSelect01">강아지 종</label>
	  <select class="form-select" id="dogcd" name="dogcd">
	  			<option value="0">선택</option>
	  		<c:forEach var="item" items="${list}">
	  			<option value="${item.DOGCD}">${item.DOGTYPE}</option>
	  		</c:forEach>
	    	<!-- <option value="1">포메라이언</option>
			<option value="2">사모예드</option>
			<option value="3">골든리트리버</option>
			<option value="4">토이푸들</option>
			<option value="5">보더콜리</option>
			<option value="6">알래스칸 클리카이</option>
			<option value="7">비숑 프리제</option>
			<option value="8">시바견</option>
			<option value="9">진돗개</option>
			<option value="10">폼피츠</option> -->
	  </select>
	</div>	
	</div>
</div>
	
		<div class="textForm">
		  <label for="formFile" class="form-label">강아지 대표사진</label>
		<div id="image_container mainPic_container" style="margin-bottom: 10px;">
		 <img src="/img/defaultImg.jpg" alt="기본 이미지" id="mDefault_image"  style="width: 20%" />
		</div>
		  <input class="form-control" type="file" id="mainphotofile" name="mainphotofile" accept="image/*">
		</div>
		
		<div class="textForm">
		  <label for="formFileMultiple" class="form-label">기타사진등록 (*3개까지 가능)</label>
		  <input class="form-control" type="file" id="dPics" name="dPics" accept="image/*" multiple="multiple">
		</div>
		
		<div class="selectForm">
           <label for="nickname">이상형월드컵 참여여부</label>
		   <div class="form-check">
		  <input type="radio" name="gamereg" value="o" checked>
		  <label>
		    예
		  </label>
		</div>
		<div class="form-check">
		  <input type="radio" name="gamereg" value="x">
		  <label>
		    아니요
		  </label>
		</div>
		</div>
		
		
		
		<div class="selectForm">
			<div class="input-group mb-3">
			  <label class="input-group-text" for="inputGroupSelect01">이상형월드컵 목적</label>
			  <select class="form-select" id="purpose" name="purpose">
			    <option value="1">산책</option>
			    <option value="2">데이트</option>
			    <option value="3">둘다</option>
			  </select>
			</div>	
        </div>
        
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
 		<div class="button">
          <button class="btn-regi" type="submit">계속</button>
        </div>
        </form>
        </div>
        
        
 <!-- 모달창 -->
 <!-- 닉네임 모달 -->
 <div id="nick-check-modal">	
    <div id="nick-check-modal-body" class="textForm">              
              <input type="text" class="form-control" name="nickname2" id="nickname2" placeholder="닉네임" autocomplete="off" style="margin-bottom: 20px;"  required>              
              <div class="valid-feedback">
              </div>
              <div class="invalid-feedback">
                2글자 이상 10글자 이하로 작성해주세요. <br>특수문자, 공백은 불가능합니다
              </div>
              <button class="btn-regi" id="nick-check-btn">중복확인</button>
    	<span id="nick-check-close"> X </span>
    </div>
 </div>
 <!-- 이메일 모달 -->
   <div id="email-check-modal">	
    <div id="email-check-modal-body" class="textForm">            
          <input type="text" class="form-control" name="email2" id="email2" placeholder="name@example.com" autocomplete="off" style="margin-bottom: 20px;" required>
            <div class="valid-feedback"></div>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
           	<button class="btn-regi" id="email-check-btn">중복확인</button>
			<span id="email-check-close"> X </span>
       </div>

    </div>
    <!-- 모달창 끝 --> 
 
 
 
 
    
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  
	//이메일 모달 띄우기 
		function remailCheck(){
		
			 var openEmailPopup = document.querySelector('#email');
			 var emailModal = document.getElementById('email-check-modal');
			 var emailCheckClose=document.getElementById('email-check-btn');


				openEmailPopup.addEventListener('click', () => {
					emailModal.style.display='block';       
 
			    });   
			    
				emailCheckClose.addEventListener('click',() => {
					emailModal.style.display='none';
					  regiBody.style.overflow='auto'
				  });
				  
				  window.addEventListener('click',(e) => {
					  if(e.target===modal){
						  emailModal.style.display='none';
						  regiBody.style.overflow='auto'          	  
					  }
				  });  
			
			
		/* 모달 띄우기 끝 */
		
		  document.querySelector("#email2").addEventListener("input", function(){
		let inputEmail=this.value;
		if(inputEmail.trim().length==0){
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			return;
		}
		
		const regEx=/^[A-Za-z\d\-\_]{4,}@[가-힣\w\-\_]+(\.\w+){1,3}$/
		
		if(regEx.test(inputEmail)){
			this.classList.remove("is-invalid");
			this.classList.add("is-valid");
			checkObj.emailValid=true;			
		}else{
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			checkObj.emailValid=false;			
		}
	});	 
		
		}
		
		
		/* 중복 확인 AJAX */
		$("#email-check-btn").click(function(){
			//alert("clicked");
			//$.post("요청명령어", 전달값, callback함수);
		$.post("register/emailDupCheck"						    //요청명령	
				,"email=" + $("#email2").val().trim() //전달값(변수=값&변수=값)
				,emailResponseProc						    //콜백함수
				);
		});//click end
		
	 	function emailResponseProc(result){ //result:서버가 응답해준 
			//alert(result);
		
	   	 	var rEmail = result.email;
	   	    var result = result.result;
			
			if(result==1){
				swal({
		        	title:"사용 가능한 이메일 입니다.",
		        	icon:"success",
		        	confirmButtonText:"확인",
		        	closeOnClickOutside:false,
		        	closeOnEsc:false,        	        	
		        })
		     $("#email-check-modal").css("display", "none");
	        // 입력창에 받은 닉네임을 설정합니다.
	        $("#email").val(rEmail);
			}else{
				
				alert("이미 사용중인 이메일 입니다");
			}
			
		}//responseProc()end
		
		
		
		
		
		
		/* 닉네임 모달 띄우기 */
		function nickCheck() {
			
			 var openNickPopup = document.querySelector('#nickname');
			 var nickModal = document.getElementById('nick-check-modal');
			 var nickCheckClose=document.getElementById('nick-check-close');

				openNickPopup.addEventListener('click', () => {
					nickModal.style.display='block';       
  
			    });   
			    
				nickCheckClose.addEventListener('click',() => {
					nickModal.style.display='none';
					  regiBody.style.overflow='auto'
				  });
				  
				  window.addEventListener('click',(e) => {
					  if(e.target===modal){
						  nickModal.style.display='none';
						  regiBody.style.overflow='auto'          	  
					  }
				  });  
			
			//window.open("register/nickCheck", "idwin", "width=400, height=200, left="+popX+", top="+popY);
		/* 모달 띄우기 끝 */
		
		    document.querySelector("#nickname2").addEventListener("input", function(){
				let inputNick=this.value;
				if(inputNick.trim().length==0){
					this.classList.remove("is-valid");
					this.classList.add("is-invalid");
					return;
				}
				
				const regEx=/^[A-Za-z가-힣0-9]{2,10}$/
				
				if(regEx.test(inputNick)){
					this.classList.remove("is-invalid");
					this.classList.add("is-valid");
					checkObj.nickValid=true;
				}else{
					this.classList.remove("is-valid");
					this.classList.add("is-invalid");
					checkObj.nickValid=false;
				}
			});    
		
		}
		
		
		/* 중복 확인 AJAX */
 		$("#nick-check-btn").click(function(){
 			//alert("clicked");
 			//$.post("요청명령어", 전달값, callback함수);
 		$.post("register/nickDupCheck"						    //요청명령	
 				,"nickname=" + $("#nickname2").val().trim() //전달값(변수=값&변수=값)
 				,responseProc						    //콜백함수
 				);
 		});//click end
 		
 	 	function responseProc(result){ //result:서버가 응답해준 
 			//alert(result);
 		
	   	 	var rNickname = result.nickname;
	   	    var result = result.result;
			
 			if(result==1){
 				swal({
 		        	title:"사용 가능한 닉네임 입니다.",
 		        	icon:"success",
 		        	confirmButtonText:"확인",
 		        	closeOnClickOutside:false,
 		        	closeOnEsc:false,        	        	
 		        })
 		     $("#nick-check-modal").css("display", "none");
 	        // 입력창에 받은 닉네임을 설정합니다.
 	        $("#nickname").val(rNickname);
 			}else{
 				
 				alert("이미 사용중인 닉네임 입니다");
 			}
 			
 		}//responseProc()end	
	
	
  
     
  </script>


<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>