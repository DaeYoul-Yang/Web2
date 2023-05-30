<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>index</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.jumbotron {
  background-color: #FFFAFA;
}
</style>
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #F8F8FF;
  font-size: 30px;
  padding: 25px 12px;
  position: absolute;
  bottom: 40px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
	<%@ include file="header2.jsp"%>
	
	<%!String tagline = "Welcome 양대열 Star Coffee";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<h2>컴퓨터공학과 양대열</h2>
			
			
			<%
			
				request.setCharacterEncoding("utf-8");
				
				
				String uid2 = request.getParameter("id2");
				String uid1 = request.getParameter("id1");
				
			   
				
				
			
			    Class.forName("com.mysql.jdbc.Driver"); 
			    
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysns?serverTimezone=UTC", "root", "1234"); 
			    String sql = "UPDATE user SET name='"+uid2+"' where name='"+uid1+"'";
			    
			    Statement stmt = conn.createStatement();
			    
			    int count = stmt.executeUpdate(sql);
			    if(count==1){
			    	out.print("회원수정이 완료되었습니다.");
			    }
			    else{
			    	out.print("회원수정 중 오류가 발생하였습니다.");
			    }
			    stmt.close(); conn.close();
			   
			%>
				</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>	
	<%@ include file="footer2.jsp"%>
</body>
</html>