<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>

 <!-- 1라운드 -->
	<div id="img-round16-container">
		 <img id="img-round16" src="/img/img_이상형월드컵16강.png">
	     <!-- <input type="image" src="" id="vimg" width="500px" height="550px"></a><!-- src --> 
	</div>
 
	<form>
				<table id="worldcup-table" style="margin-left:auto; margin-right:auto; margin-top: 70px; margin-bottoom:130px;">
					<tbody id="worldcup-tbody">
					<tr>
						<td><a href="">
						<div id="worldcupImgContainer">
							 <img id="Left-img">
						     <!-- <input type="image" src="" id="vimg" width="500px" height="550px"></a><!-- src --> 
						</div>
						</td>
						
						<td><p style="color: black; font-weight: bold; font-size: 40px;">VS</p></td>
						
						<td><a href="">
						<div id="worldcupImgContainer">
							<img id="right-img">
						     <!-- <input type="image" src="" id="simg" width="500px" height="550px"></a><!-- src -->
						</div> 
						</td>
					</tr>
					</tbody>
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
            document.querySelector("#Left-img").src = v[vchoice];
            document.querySelector("#Left-img").style.opacity = 1;
            
            

            var s = [
            '/img/dog2.jpeg',
            '/img/dog4.jpeg',
            '/img/main3.jpeg',
            '/img/profile.jpg'
           ];

            var schoice = Math.floor(Math.random() * s.length);
            document.querySelector("#right-img").src = s[schoice];
            document.querySelector("#right-img").style.opacity = 1;
            
            
            var imageList = [
                <c:forEach var="image" items="${imageList}" varStatus="status">
                    {
                        "mainphoto": "${image.mainphoto}"
                    }<c:if test="${!status.last}">,</c:if>
                </c:forEach>
            ];
            
            
           	 console.log(imageList);
            
            </script>
            
            
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>