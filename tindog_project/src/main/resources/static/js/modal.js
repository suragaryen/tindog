    const body = document.querySelector('body');
    const btnOpenPopup = document.querySelector('.btn-open-popup');
    const modal = document.getElementById('modal');
	const closeModalBtn=document.getElementById('closeModalBtn');

      btnOpenPopup.addEventListener('click', () => {
         modal.style.display='block'; 
         
         body.style.overflow='hidden';    
      });   
      
      closeModalBtn.addEventListener('click',() => {
		  modal.style.display='none';
		  body.style.overflow='auto'
	  });
	  
	  window.addEventListener('click',(e) => {
		  if(e.target===modal){
			  modal.style.display='none';
			  body.style.overflow='auto'          	  
		  }
	  });     
    