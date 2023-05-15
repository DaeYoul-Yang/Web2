<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>

</head>
<body>
	<%@ include file="menu.jsp"%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
			<%@ page import="java.sql.*" %>
			<%
				request.setCharacterEncoding("utf-8");
			
			    String uid = request.getParameter("id");
			    String ucon = request.getParameter("content");
			    
			    String sql = "INSERT INTO pfeed(id,content) VALUES";
			  
			    sql+="('" +uid+"','"+ucon+"')";
			    
			    Class.forName("com.mysql.jdbc.Driver");
			    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada", "root", "1234");
			  
			    Statement stmt = conn.createStatement();
			    
			    int count = stmt.executeUpdate(sql);
			    
			    
			    if(count==1){
			    
			   
			        out.print("작성하신 글이 업로드되었습니다.");
			    }
			    else {
			        out.print("작성 글의 업로드 중 오류가 발생하였습니다.");
			    }
			%>
			</h1>
		</div>
	</div>	

	
	<div class="container">
		<div class="text-center">
			
			
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>