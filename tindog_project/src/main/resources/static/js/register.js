	var regiBody = document.querySelector('body');
  		
  		
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
	
  		
  		//유효성 검사
	
		const checkObj={
			"nameValid":false
			,"nickValid":false			
			,"emailValid":false
			,"pwValid":false
			,"pwCheckValid":false
			,"detailaddr":false
			,"dnameValid":false
			,"dageValid":false
			,"weightValid":false
		}
		
		
	document.querySelector("#dname").addEventListener("input", function(){
		let inputDname=this.value;
		if(inputDname.trim().length==0){
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			return;
		}
		
		const regEx=/^[A-Za-z가-힣0-9]{1,10}$/
		
		if(regEx.test(inputDname)){
			this.classList.remove("is-invalid");
			this.classList.add("is-valid");
			checkObj.dnameValid=true;
		}else{
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			checkObj.dnameValid=false;
		}
	});
	
	document.querySelector("#age").addEventListener("input", function(){
		let inputAge=this.value;
		if(inputAge.trim().length==0){
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			return;
		}
		
		const regEx=/^[0-9]/
		
		if(regEx.test(inputAge)){
			this.classList.remove("is-invalid");
			this.classList.add("is-valid");
			checkObj.dageValid=true;
		}else{
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			checkObj.dageValid=false;
		}
	});
	
	document.querySelector("#weight").addEventListener("input", function(){
		let inputWeight=this.value;
		if(inputWeight.trim().length==0){
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			return;
		}
		
		const regEx=/^[0-9]/
		
		if(regEx.test(inputWeight)){
			this.classList.remove("is-invalid");
			this.classList.add("is-valid");
			checkObj.weightValid=true;
		}else{
			this.classList.remove("is-valid");
			this.classList.add("is-invalid");
			checkObj.weightValid=false;
		}
	});
  		
		
		
		
		document.querySelector("#name").addEventListener("input", function(){
			let inputName=this.value;
			if(inputName.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				return;
			}
			
			const regEx=/^[가-힣]{2,4}$/
			
			if(regEx.test(inputName)){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
				checkObj.nameValid=true;
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				checkObj.nameValid=false;
			}
		});
		
		
		
		
		
		
		document.querySelector("#nickname").addEventListener("input", function(){
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
		
		
		document.querySelector("#password").addEventListener("input", function(){
			let inputPw=this.value;			
			if(inputPw.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				return;
			}
			
			const regEx=/^[A-Za-z0-9\!\@\#\-\_]{6,20}$/
			
			if(regEx.test(inputPw)){				
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
				checkObj.pwValid=true;
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				checkObj.pwValid=false;
			}			
		});
		
		document.querySelector("#repasswd").addEventListener("input", function(){
			let inputPwCheck=this.value;
			if(inputPwCheck.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");				
			}
						
				if(inputPwCheck==password.value){
					this.classList.remove("is-invalid");
					this.classList.add("is-valid");
					checkObj.pwCheckValid=true;
				}else{
					this.classList.remove("is-valid");
					this.classList.add("is-invalid");
					checkObj.pwCheckValid=false;
				}
			
		});
		
		document.querySelector("#email").addEventListener("input", function(){
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
		
		
		document.querySelector("#detailaddr").addEventListener("input", function(){
			let inputDetailaddr=this.value;
			detailaddr=inputDetailaddr.length>0;
			if(inputDetailaddr.length > 0){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");		
				checkObj.detailaddr=true;		
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
			}
		})
		

		document.querySelector("#dname").addEventListener("input", function(){
			let inputDname=this.value;
			if(inputDname.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				return;
			}
			
			const regEx=/^[A-Za-z가-힣0-9]{1,10}$/
			
			if(regEx.test(inputDname)){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
				checkObj.dnameValid=true;
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				document.register-form.dname.focus();
				checkObj.dnameValid=false;
			}
		});
		
		document.querySelector("#age").addEventListener("input", function(){
			let inputAge=this.value;
			if(inputAge.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				return;
			}
			
			const regEx=/^[0-9]$/
			
			if(regEx.test(inputAge)){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
				checkObj.dageValid=true;
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				checkObj.dageValid=false;
			}
		});
		
		document.querySelector("#weight").addEventListener("input", function(){
			let inputWeight=this.value;
			if(inputWeight.trim().length==0){
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				return;
			}
			
			const regEx=/^[0-9]/
			
			if(regEx.test(inputWeight)){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
				checkObj.weightValid=true;
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
				checkObj.weightValid=false;
			}
		});
	
		//유저사진 미리보기 
		const representativeImageInput = document.getElementById('userphotofile');
		const representativeImageContainer = document.getElementById('userPic_container');
		const representativeImage = document.getElementById('uDefault_image');
		
		representativeImageInput.addEventListener('change', (e) => {
			const file = e.target.files[0];
			const reader = new FileReader();
		
			reader.onload = function (event) {
				representativeImage.src = event.target.result;
			};
		
			if (file) {
				reader.readAsDataURL(file);
			} else {
				representativeImage.src = 'img/defaultImg.jpg'; // 기본 이미지로 설정
			}
		});
		
		//강아사진 미리보기 
		const userImageInput = document.getElementById('mainphotofile');
		const userImageContainer = document.getElementById('mainPic_container');
		const userImage = document.getElementById('mDefault_image');
		
		userImageInput.addEventListener('change', (e) => {
			const file = e.target.files[0];
			const reader = new FileReader();
		
			reader.onload = function (event) {
				userImage.src = event.target.result;
			};
		
			if (file) {
				reader.readAsDataURL(file);
			} else {
				userImage.src = 'img/defaultImg.jpg'; // 기본 이미지로 설정
			}
		});
		
		
		//생년월일 오늘 날짜로 셋팅  
		
		//현재 날짜를 가져오는 함수
		function getCurrentDate(){
			const now = new Date();
			const year = now.getFullYear();
			let month = (now.getMonth()+1).toString();
			let day = now.getDate().toString();
			
			//월과 일이 한자리 수인 경우 앞에 0을 붙여준다
			month = month.length === 1 ? '0' + month : 	month;
			day = day.length === 1? '0' + day : day; 
			
			return `${year}-${month}-${day}`;
		}
		 // 현재 날짜로 값을 설정하는 코드
		document.getElementById('birth').value = getCurrentDate();




/*SUBMIT 막는 자바스크립트 */
		
		function validateForm() {
			
		    let inputNameElement = document.querySelector("#name");
		    let inputName = inputNameElement.value.trim();
		   	let inputNicknameElement = document.querySelector("#nickname");
		    let inputNickname = inputNicknameElement.value.trim();
		    let inputEmailElement = document.querySelector("#email");
		    let inputEmail = inputEmailElement.value.trim();
		    let inputPasswordElement = document.querySelector("#password");
		    let inputPassword = inputPasswordElement.value.trim();
		    let inputDetailaddrElement = document.querySelector("#detailaddr");
		    let inputDetailaddr = inputDetailaddrElement.value.trim();
		    let inputUserphotofileElement = document.querySelector("#userphotofile");
		    let inputUserphotofile = inputUserphotofileElement.value.trim();
		    let inputDnameElement = document.querySelector("#dname");
		    let inputDname = inputDnameElement.value.trim();
		    let inputAgeElement = document.querySelector("#age");
		    let inputAge = inputAgeElement.value.trim();
		    let inputWeightElement = document.querySelector("#weight");
		    let inputWeight = inputWeightElement.value.trim();
		
		    if (inputName.length === 0 || !checkObj.nameValid) {
		        // 이름이 비어 있거나 유효하지 않으면 제출을 막습니다.
		        inputNameElement.classList.remove("is-valid");
		        inputNameElement.classList.add("is-invalid");
		        
		        return false;
		    }else if(inputNickname.length === 0 || !checkObj.nickValid) {
				inputNicknameElement.classList.remove("is-valid");
		        inputNicknameElement.classList.add("is-invalid");
		        return false;
				
			}else if(inputEmail.length === 0 || !checkObj.emailValid) {
				inputEmailElement.classList.remove("is-valid");
		        inputEmailElement.classList.add("is-invalid");
		        return false;
		    }else if(inputPassword.length === 0 || !checkObj.pwValid) {
				inputPasswordElement.classList.remove("is-valid");
		        inputPasswordElement.classList.add("is-invalid");
		        return false;
		    }else if(inputDname.length === 0 || !checkObj.dnameValid) {
				inputDnameElement.classList.remove("is-valid");
		        inputDnameElement.classList.add("is-invalid");
		        
		        return false;
		    }else if(inputAge.length === 0 || !checkObj.dageValid) {
				inputAgeElement.classList.remove("is-valid");
		        inputAgeElement.classList.add("is-invalid");
		        return false;
		    }else if(inputWeight.length === 0 || !checkObj.weightValid) {
				inputWeightElement.classList.remove("is-valid");
		        inputWeightElement.classList.add("is-invalid");
		        return false;
		    }else if(inputDetailaddr.length === 0 || !checkObj.detailaddr) {
				inputDetailaddrElement.classList.remove("is-valid");
		        inputDetailaddrElement.classList.add("is-invalid");
		        return false;
		        
		    }
		   
		
		    // 나머지 유효성 검사 또는 추가적인 로직을 여기에 추가할 수 있습니다.
		
		    return true; // 유효한 경우에만 제출을 허용합니다.
		}
		
		document.querySelector("#register-form").addEventListener("submit", function(event) {
		    if (!validateForm()) {
		        // 유효하지 않은 경우에 수행할 작업
		        swal({
		        	title:"필요한 정보를 모두 입력해주세요.",
		        	icon:"warning",
		        	confirmButtonText:"확인",
		        	closeOnClickOutside:false,
		        	closeOnEsc:false,        	        	
		        })
		        event.preventDefault(); // 제출을 막습니다.
		    }
		});
		
		/*SUBMIT 막는 자바스크립트 끝  */
	
	
	/*
	let tableCounter = 1; // 테이블 고유 ID를 위한 카운터
		
	function addDReg(){
		
		if(tableCounter < 3){
		
		tableCounter++; // 각 테이블마다 고유한 ID를 위해 증가
		
		var table = document.createElement('table');
        table.className = 'table';
        table.id = 'dogReg_' + tableCounter; // 고유한 ID 할당
		
		
		// 테이블에 필요한 내용 추가
		table.innerHTML = `
			
			<table class="table" id="dogReg1">
				<input type="hidden" name="dogorder" value="${tableCounter}">
			<tr>
			    <td style="text-align: center">
			    	강아지${tableCounter} 정보입력
			    </td>
			</tr>
			<tr>
			    <th style="width: 21%;">강아지 이름</th>
			    <td style="text-align: left">
			    	<input type="text" name="dname" id="dname" size="10" maxlength="10">
			    </td>
			</tr>
			<tr>
			    <th>강아지 나이</th>
			    <td style="text-align: left">
			    	<input type="number" name="age" id="age" size="1" maxlength="2">살
			    </td>
			</tr>
			<tr>
			    <th>성별</th>
			    <td style="text-align: left">
					<label>
						<input type="radio" name="sex" value="m">
						남아&nbsp;
					</label>
					<label>
						<input type="radio" name="sex" value="f">
						여아
					</label>
			    </td>
			</tr>
			    <th>중성화 여부</th>
			    <td style="text-align: left">
					<label>
						<input type="radio" name="neutral" value="o">
						예&nbsp;
					</label>
					<label>
						<input type="radio" name="neutral" value="x">
						아니오
					</label>
			    </td>
			</tr>
			<tr>
			    <th>무게</th>
			    <td style="text-align: left">
			    	<input type="text" name="weight" id="weight" size="10" maxlength="10">kg
			    </td>
			</tr>
			<tr>
				<th>사이즈</th>
				<td style="text-align: left">
					<select id="size" name="size">
						<option value="1">소형견</option>
						<option value="2">중형견</option>
						<option value="3">대형견</option>
					</select>
				</td>
			</tr>
			<tr>
			<th>강아지 견종 </th>
				<td style="text-align: left">
					<select id="dogcd" name="dogcd">
						<option value="1">포메라이언</option>
						<option value="2">사모예드</option>
						<option value="3">골든리트리버</option>
						<option value="4">토이푸들</option>
						<option value="5">보더콜리</option>
						<option value="6">알래스칸 클리카이</option>
						<option value="7">비숑 프리제</option>
						<option value="8">시바견</option>
						<option value="9">진돗개</option>
						<option value="10">폼피츠</option>
					</select>
				</td>
			</tr>
			<tr>
			  <th>대표사진등록</th>
			  <td style="text-align: left">
				<div id="image_container mainPic_container">
					 <img src="img/defaultImg.jpg" alt="기본 이미지" id="mDefault_image"  style="width: 50%" />
				</div>
				<input type="file" id="mainphoto" name="mainphoto" accept="image/*">
			  </td>
			</tr>
			<tr>
			  <th>기타사진등록</th>
			  <td style="text-align: left">
				<input type="file" id="dPic1" name="dPic1" accept="image/*">
				<input type="file" id="dPic2" name="dPic2" accept="image/*">
				<input type="file" id="dPic3" name="dPic3" accept="image/*">
			  </td>
			</tr>
			<tr>
			    <th>강아지 소개</th>
			    <td style="text-align: left">
			    	<textarea id="dog_detail" name="dog_detail" rows="4" cols="50"></textarea>
			    </td>
			</tr>
			<tr>
			    <th>이상형월드컵 등록</th>
			    <td style="text-align: left">
					<label>
						<input type="radio" name="gameReg" value="Y">
						예&nbsp;
					</label>
					<label>
						<input type="radio" name="gameReg" value="N">
						아니요
					</label>
			    </td>
			</tr>
			<tr>
				<th>이상형월드컵 목적</th>
				<td style="text-align: left">
					<select id="purpose" name="purpose">
						<option value="1">산책</option>
						<option value="2">데이트</option>
						<option value="3">둘다</option>
					</select>
				</td>
			</tr>
        `;
			
		
		const target = document.getElementById('appendHere');
		target.appendChild(table);
		
		}else{
			alert("최대 3마리까지 등록하실 수 있습니다");
		}
		
		
	}//addDReg end
	
	*/
		