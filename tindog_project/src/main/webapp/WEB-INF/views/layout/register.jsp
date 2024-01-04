<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<!-- was-validated  needs-validation -->

        <form class="needs-validation" name="register-form" id="register-form" method="post" action="register/dog" enctype="multipart/form-data" novalidate>
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
            
          </div>

		 <div class="textForm">
		         <!--  <input type="text" name="post" id="post" size="7"  readonly class="form-select"> -->
		         <label for="validationCustom04" class="form-label">우편번호</label>
		           <input type="text" class="form-control" name="post" id="post" onclick= "DaumPostcode()" placeholder="검색" readonly="readonly">
		          <!-- <button class="btn btn-outline-secondary" type="button" value="주소찾기" onclick= "DaumPostcode()">주소찾기 </button> -->
			      <!-- <input type="button" value="주소찾기" onclick= "DaumPostcode()"> -->   
			      <!-- ----- DAUM 우편번호 API 시작 ----- -->
			  <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
			    <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
			  </div> 
		    <div class="invalid-feedback">
		      우편번호를 입력해주세요.
		    </div>		
		 <div class="row">
          <div>
		    <label for="validationCustom03" class="form-label">주소 </label>
		    <input type="text" class="form-control" name="addr" id="addr" required readonly="readonly">
		    <div class="valid-feedback">
              
            </div>
		    <div class="invalid-feedback">
		      
		    </div>
		  </div>
		  <div >
		    <label for="validationCustom04" class="form-label">나머지 주소</label>
			<input type="text" class="form-control" name="detailaddr" id="detailaddr" autocomplete="off" required>
		    <div class="valid-feedback">
              
            </div>
		    <div class="invalid-feedback">
		    	나머지 주소를 입력해주세요.
		    </div>
		  </div>          
		</div>
		</div>
	

		<div class="textForm">
		  <label for="formFile" class="form-label">유저사진</label>
		  	<div id="image_container userPic_container">
				 <img src="img/defaultImg.jpg" alt="기본 이미지" id="uDefault_image" class="img-thumbnail"  style="width: 20%" />
			</div>
		  <input class="form-control" type="file" id="userphotofile" name="userphotofile" accept="image/*">
 		</div>
        
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
          </div>
 		<div class="button">
          <button class="btn-regi" type="submit">계속</button>
        </div>
        </form>
    
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
      // 우편번호 찾기 찾기 화면을 넣을 element
      var element_wrap = document.getElementById('wrap');

      function foldDaumPostcode() {
          // iframe을 넣은 element를 안보이게 한다.
          element_wrap.style.display = 'none';
      }

      function DaumPostcode() {
          // 현재 scroll 위치를 저장해놓는다.
          var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
          new daum.Postcode({
              oncomplete: function(data) {
                  // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var addr = ''; // 주소 변수
                  var extraAddr = ''; // 참고항목 변수

                  //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      addr = data.jibunAddress;
                  }

                  // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                  if(data.userSelectedType === 'R'){
                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있고, 공동주택일 경우 추가한다.
                      if(data.buildingName !== '' && data.apartment === 'Y'){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                      if(extraAddr !== ''){
                          extraAddr = ' (' + extraAddr + ')';
                      }
                      // 조합된 참고항목을 해당 필드에 넣는다.
                      document.getElementById("detailaddr").value = extraAddr;
                  
                  } else {
                      document.getElementById("detailaddr").value = '';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('post').value = data.zonecode;
                  document.getElementById("addr").value = addr;
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById("detailaddr").focus();

                  // iframe을 넣은 element를 안보이게 한다.
                  // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                  element_wrap.style.display = 'none';

                  // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                  document.body.scrollTop = currentScroll;
              },
              // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
              onresize : function(size) {
                  element_wrap.style.height = size.height+'px';
              },
              width : '100%',
              height : '100%'
          }).embed(element_wrap);

          // iframe을 넣은 element를 보이게 한다.
          element_wrap.style.display = 'block';
      }
      
      //강아지 기타사진 3개까지만 받기 
      const input = document.getElementById('dPics');

      input.addEventListener('change', function() {
          if (this.files.length > 3) {
              alert('최대 3개의 파일만 선택할 수 있습니다.');
              this.value = ''; // 선택한 파일 초기화
          }
      });
      
	function nickCheck() {
		var popWidth=400;
		var popHeight=200;
		var popX=Math.round(window.screenX+(window.outerWidth/2)-(popWidth/2));
		var popY=Math.round(window.screenY+(window.outerHeight/2)-(popHeight/2));
		
		window.open("register/nickCheck", "idwin", "width=400, height=200, left="+popX+", top="+popY);
	}
	
	function remailCheck() {
		var popWidth=400;
		var popHeight=200;
		var popX=Math.round(window.screenX+(window.outerWidth/2)-(popWidth/2));
		var popY=Math.round(window.screenY+(window.outerHeight/2)-(popHeight/2));
		
		window.open("register/emailCheck", "idwin", "width=400, height=200, left="+popX+", top="+popY);
	}
  </script>


<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>