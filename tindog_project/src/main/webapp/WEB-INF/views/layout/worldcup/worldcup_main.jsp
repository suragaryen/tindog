<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include> 

<form >
				
				<div class= data-wow-delay="0.1s" style="max-width: 400px; color:navy; margin-left: 450px; margin-top: 100px;">
					<h2>TINDOG 강아지 이상형 월드컵</h2>
				</div>
				
				<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 300px; margin-top: 30px;">
                <h4>주간 인기 댕댕이🐶</h4>
                </div>
				
	<style>
		  #scroll{
			       position: relative; 
                   left: 450px; /*100*/
                   top: 10px;
                

                   width: 1100px;                    
                   height: 300px;                   
                  
                  
                   background-color: white;    
                   overflow: hidden;               
                }
	</style>

                <div id="scroll">
				<script> 
					 
            let ctnt=[];    
            ctnt[0]="<img src='/img/dog1.jpeg' width='300' height='300'>" 
            ctnt[1]="<img src='/img/dog2.jpeg' width='300' height='300'>"
            ctnt[2]="<img src='/img/dog3.jpeg' width='300' height='300'>"
            ctnt[3]="<img src='/img/dog4.jpeg' width='300' height='300'>"
          

            
            function start(){
              
                for(let i=0; i<ctnt.length; i++){
                    document.write("<div id='area" + i + "' style='position:absolute; top:0; left: " + (i*270) + "px;'>"); //270
                    document.write(ctnt[i]);
                    document.write("</div>");
                }//for end


                setTimeout(scroll, 1000);
                

            }//start() end


            function scroll(){
             
                for(let i=0; i<ctnt.length; i++){
                    tmp = document.getElementById('area' + i ).style;
                    tmp.left = parseInt(tmp.left)-30 + "px"; //-30


                    if(parseInt(tmp.left) <= -270){
                        tmp.left = (ctnt.length-1)*270 + "px";
                    }//if end
                   
                }//for end         

               
                timer = setTimeout(scroll, 500);

            }//scroll() end            


            let timer; 
            function killtime(){
                clearTimeout(timer);
            }//killtime() end
					
					
			start();
					
				</script>
			    </div>
			    
				
				<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px; margin-top: 50px;">
                <p><button type="button" class="btn btn-secondary" onclick="location.href='worldcup/select'">이상형 강아지 등록하기 >></button></p>
                </div>
                
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px;">
                <p><button type="button" class="btn btn-secondary" onclick="location.href='worldcup/start'">이상형 월드컵 시작하기 >></button></p>
                </div>

           </form> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>