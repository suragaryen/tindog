<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>

 <!-- 1라운드 -->
	<form>
				<table style="margin-left:auto; margin-right:auto; margin-top: 70px; margin-bottoom:130px;">
					<tr>
						<td><a href="">
						     <input type="image" src="" id="vimg" width="500px" height="550px"></a><!-- src -->
						</td>
						
						<td><p style="color: black; font-weight: bold; font-size: 40px;">VS</p></td>
						
						<td><a href="">
						     <input type="image" src="" id="simg" width="500px" height="550px"></a><!-- src -->
						</td>
					</tr>
				</table>
           </form> 
           
           <script>
            var v = [
            '/img/dog1.jpeg',
            '/img/dog3.jpeg',
            '/img/main2.jpg',
            '/img/main4.jpeg'
           ];
            
            var vchoice = Math.floor(Math.random() * v.length);
            document.querySelector("#vimg").src = v[vchoice];
            document.querySelector("#vimg").style.opacity = 1;
            
            

            var s = [
            '/img/dog2.jpeg',
            '/img/dog4.jpeg',
            '/img/main3.jpeg',
            '/img/profile.jpg'
           ];

            var schoice = Math.floor(Math.random() * s.length);
            document.querySelector("#simg").src = s[schoice];
            document.querySelector("#simg").style.opacity = 1;
            
            </script>
            
            
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>