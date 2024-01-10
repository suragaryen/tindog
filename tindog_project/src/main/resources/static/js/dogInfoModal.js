// 모달 이미지 클릭 시 이벤트 처리


var modalImg = document.getElementById('dog1');
var modal = document.getElementById('dogInfoModal');
var modalImgContent = document.getElementById('modal-content');
var closeBtn = document.getElementsByClassName('modal-close')[0];

modalImg.onclick = function() {
  modal.style.display = 'block';

};

// 모달 닫기 버튼 클릭 시 이벤트 처리
closeBtn.onclick = function() {
  modal.style.display = 'none';
};

// 모달 외부 영역 클릭 시 모달 닫기
window.onclick = function(event) {
  if (event.target === modal) {
    modal.style.display = 'none';
  }
};
 
	  
	  
	  
	  
	  
	  