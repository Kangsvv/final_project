<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>Insert title here</title>

</head>
<style>
#back-to-top{
color:white;
position:fixed;
z-index:1;
top:80%;
left:89%;
}
</style>
<body>
 <div id="back-to-top">

      <svg xmlns="http://www.w3.org/2000/svg" id="letter1" width="40" height="40" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
  <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/>
</svg>

    </div>
<script>
$("#letter1").mouseover(function(){
	$(this).css("color","#760c0c");
	$(this).css("cursor","pointer");
})
$("#letter1").mouseout(function(){
	$(this).css("color","white");
})
$("#letter1").on("click",function(){
	location.href="/cafein/messagebox";
})
</script>
</body>
</html>