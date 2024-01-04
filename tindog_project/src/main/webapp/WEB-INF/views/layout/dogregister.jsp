<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<!-- was-validated  needs-validation -->

        <form class="needs-validation" name="register-form" id="register-form" method="post" action="userInsert" enctype="multipart/form-data" novalidate>
          
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
			<div class="title">강아지 성별</div>
			<div class="form-check">
				<input type="radio" name="sex" value="m">
				<label> 남아	</label>
			</div>
			<div class="form-check">
				<input type="radio" name="sex" value="f">
				<label> 여아	</label>
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
	</div>	
	</div>
</div>
	
		<div class="textForm">
		  <label for="formFile" class="form-label">강아지 대표사진</label>
		<div id="image_container mainPic_container">
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
          <div class="mb-4"></div>
          <button class="btn-regi" type="submit">계속</button>
        </form>
 
  <script>
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

  </script>


<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>