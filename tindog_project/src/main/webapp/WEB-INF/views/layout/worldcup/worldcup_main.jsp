<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
#rank-img > img{
	height: 300px;
	width : 300px;
}
</style>
<body class="wrapper">
<jsp:include page="/WEB-INF/views/common/sessionHeaderAlert.jsp"></jsp:include>
		
<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px; margin-top: 50px !important;" >
           <img src="/img/강아지이상형월드컵.png">
       </div>
				<!-- 주간 인기 댕댕이 시작 -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block border rounded-pill py-1 px-4">Top 4</p>
                <h1 style="font-size:30px;">주간 인기 댕댕이🐶</h1>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden" id="rank-img">
                            <img class="img-fluid" src="img/dog1.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>꾸꾸</h5>
                            <p class="text-primary">골든리트리버/1살</p>                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden" id="rank-img">
                            <img class="img-fluid" src="img/dog2.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>꽁이</h5>
                            <p class="text-primary">포메라이언/2살</p>                            
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden" id="rank-img">
                            <img class="img-fluid" src="img/dog3.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>릴리</h5>
                            <p class="text-primary">말티즈/5살</p>                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden" id="rank-img">
                            <img class="img-fluid" src="img/dog4.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>새침이</h5>
                            <p class="text-primary">3살/비글</p>                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- 주간 인기 댕댕이 끝  -->

<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
		<button id="btn" class="btn-open-popup" style="display:inline-block; background-color: white; border:none;"><img src="img/btn_이상형강아지등록.png"></button>
		<a href="worldcup/start" style="display:inline-block;"><img src="img/btn_이상형월드컵시작.png"></a>
	</div>

	<div class="worldcupmodal" id="worldcupmodal">
   	<div class="modal_content">	
	<form name="worldcupForm" method="post"  action="worldcup/optionstart">
	
	<div class="option_nav">
		<div class="nav_header">
			<h4 class="nav_title">
				<span>상세검색</span>
			</h4>		
		</div>
		<div class="spec_list">					
			<div>
				<div class="spec_name">		
					나이	
				</div>
				<div class="spec_content">					
					<label title="0살">
						<input type="radio" autocomplete="off" id="age0" name="age" value=0>
						0
					</label>
					<label title="1살">
						<input type="radio" autocomplete="off" id="age1" name="age" value=1>
						1						
					</label>
					<label title="2살">
						<input type="radio" autocomplete="off" id="age2" name="age" value=2>
						2		
					</label>
					<label title="3살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						3							
					</label>
					<label title="4살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						4			
					</label>
					<label title="5살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						5							
					</label>
					<label title="6살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						6							
					</label>
					<label title="7살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						7				
					</label>
					<label title="8살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						8						
					</label>
					<label title="9살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>
						9							
					</label>
					<label title="10살">
						<input type="radio" autocomplete="off" id="age3" name="age" value=3>							
						10							
					</label>
				</div>	
			</div>	
			<div>
				<div class="spec_name">	
					목적	
				</div>		
				<div class="spec_content">
					<label title="산책친구">
						<input type="radio" autocomplete="off" id="walk" name="purpose" value=1>
						산책친구
					</label>
					<label title="데이트">
						<input type="radio" autocomplete="off" id="purpose" name="purpose" value=2>
						데이트								
					</label>
				</div>
			</div>
			<div>
				<div class="spec_name">					
					사이즈
				</div>
				<div class="spec_content">
					<label title="사이즈">
						<input type="radio" autocomplete="off" id="small" name="size" value=1>
						소형견
					</label>
					<label title="사이즈">	
						<input type="radio" autocomplete="off" id="mid" name="size" value=2>
						중형견
					</label>
					<label title="사이즈">	
						<input type="radio" autocomplete="off" id="big" name="size" value=3>
						대형견								
					</label>
				</div>
			</div>
			<div>
				<div class="spec_name">
					성별
				</div>
				<div class="spec_content">	
					<label title="성별">
						<input type="radio" autocomplete="off" id="boy" name="sex" value="M">
						남
					</label>
					<label title="성별">
						<input type="radio" autocomplete="off" id="lady" name="sex" value="F">
						여													
					</label>
				</div>
			</div>
			<div>
				<div class="spec_name">					
					중성화
				</div>
				<div class="spec_content">					
					<label title="중성화">
						<input type="radio" autocomplete="off" id="sad" name="neutral" value="o">
						 O
					</label>
					<label title="중성화">
						<input type="radio" autocomplete="off" id="happy" name="neutral" value="x">
						 X													
					</label>
				</div>
			</div>
		</div>
	</div>
	<span class="close" id="closeModalBtn"> X </span>   

	<div id="submit" style="margin-top: 35px"> 
		<input type="image" src="/img/btn_이상형월드컵시작.png">
		<!-- <img src="/img/btn_이상형월드컵시작.png" class="btn" onclick="location.href='worldcup/optionstart'"> -->
	</div>
	</form>
	</div>
</div>

<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>