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
<body>
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
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
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
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
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
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
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
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- 주간 인기 댕댕이 끝  -->

<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
		<button id="btn" class="btn-open-popup" style="display:inline-block; background-color: white;"><img src="img/btn_이상형강아지등록.png"></button>
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
			<div class="detail_list">
				<dl class=spec_item>
					<dt class="item_dt">
						나이	
					</dt>		
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="0세">
									<input type="checkbox" autocomplete="off" id="age0" name="age" value=0>
									0세
								</label>
								<label title="1세">
									<input type="checkbox" autocomplete="off" id="age1" name="age" value=1>
									1세							
								</label>
								<label title="2세">
									<input type="checkbox" autocomplete="off" id="age2" name="age" value=2>
									2세							
								</label>
								<label title="3세">
									<input type="checkbox" autocomplete="off" id="age3" name="age" value=3>
									3세							
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						목적	
					</dt>		
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="산책친구">
									<input type="checkbox" autocomplete="off" id="walk" name="purpose" value=1>
									산책친구
								</label>
								<label title="데이트">
									<input type="checkbox" autocomplete="off" id="purpose" name="purpose" value=2>
									데이트								
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						사이즈
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="사이즈">
									<input type="checkbox" autocomplete="off" id="small" name="size" value=1>
									소형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="mid" name="size" value=2>
									중형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="big" name="size" value=3>
									대형견								
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						지역
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="seoul" name="ck">
									서울/경기
								</label>
								<label title="지역">	
									<input type="checkbox" autocomplete="off" id="won" name="ck">
									강원권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="chung" name="ck">
									충청권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="nam" name="ck">
									영남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="ho" name="ck">
									호남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="etc" name="ck">
									기타						
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						성별
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
						
								<label title="성별">
									<input type="checkbox" autocomplete="off" id="boy" name="sex" value="M">
									남
								</label>
								<label title="성별">
									<input type="checkbox" autocomplete="off" id="lady" name="sex" value="F">
									여													
								</label>

							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						중성화
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="중성화">
									<input type="checkbox" autocomplete="off" id="sad" name="neutral" value="o">
									중성화 O
								</label>
								<label title="중성화">
									<input type="checkbox" autocomplete="off" id="happy" name="neutral" value="x">
									중성화 X													
								</label>
							</li>
						</ul>
					</dd>
				</dl>
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