<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<style>
#rank-img > img{
	height: 300px;
	width : 300px;
}
</style>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>
		
		<div class= "wow fadeInUp data-wow-delay='0.1s'" style="max-width: 400px; color:navy; margin-left: 700px; margin-top: 100px;">
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


               
			    
				
	<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px; margin-top: 50px;">
	   <a href="worldcup/select"><img src="img/btn_이상형강아지등록.png"></a>
	  </div>
	    
	    <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px;">
	    <a href="worldcup/start"><img src="img/btn_이상형월드컵시작.png"></a>
	    <!-- <button type="button" class="btn btn-secondary">이상형 월드컵 시작하기 </button>-->
	    </div>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>