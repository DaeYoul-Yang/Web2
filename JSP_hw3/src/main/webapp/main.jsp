<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="dao.*" %>
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

<%
    String uid = (String) session.getAttribute("id");
    if (uid == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    session.setAttribute("id", uid);
    
	ArrayList<FeedObj> feeds = (new FeedDAO()).getList();
    
    String str = "<table align=center>";
    str += "<tr height=40><td><b>작성글 리스트</b></td>";
    str += "<td align=right>";
    str += "<a href='feedAdd.jsp'><button>글쓰기</button></a>"; 
    str += "</td></tr>";
    
    for (FeedObj feed : feeds) {
        String img = feed.getImages(), imgstr = "";
        if (img != null) {
            imgstr = "<img src='images/" + img + "' width=240>";
        }    	
        str += "<tr><td colspan=2><hr></td></tr>";
        str += "<tr>";
    	str += "<td><small>" + feed.getId() + "</small></td>";
    	str += "<td><small>&nbsp;(" + feed.getTs() + ")</small></td>";
        str += "</tr>";
    	str += "<tr><td colspan=2>" + imgstr + "</td></tr>";
    	str += "<tr><td colspan=2>" + feed.getContent() + "</td></tr>";
    }
    str += "</table>";
    out.print(str);
%>
<%@ include file="footer2.jsp"%>
</body>
</html>