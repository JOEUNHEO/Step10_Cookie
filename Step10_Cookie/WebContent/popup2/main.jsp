<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup2/main.jsp</title>
</head>
<body>
<%
	//팝업창을 띄울지에 대한 여부
	boolean canPopup = true;
	//쿠키 목록을 읽어와서
	Cookie[] cookies = request.getCookies();
	//반복문 돌면서 쿠키를 확인해서
	// (session 도 cookie 이기 때문에, session 에 값이 담겨 있다면 cookies 는 null 이 아니다!)
	// (localhost로 웹브라우져를 실행할 때, JSESSIONID 가 부여됨으로, cookies 는 null 이 되지 않는다!)
	// (현장에서도 cookies 가 null 인 경우는 거의 없다고 봐야 한다!)
	
	//if(cookies != null){ (null 이 아닌 조건을 주는게 정확한 구현이다!)
		for(Cookie tmp:cookies){
			//popup 이라는 키값으로 저장된 쿠키가 존재하면
			if(tmp.getName().equals("popup")){
				//팝업을 띄우지 않도록 설정
				canPopup = false;
			}
		}	
	//}
	
	
	
%>
<%if(canPopup){ %>
<script>
	window.open("popup_page.jsp", "팝업", "width=500, height=500, top=100, left=100");
</script>
<%} %>
<h3>메인 페이지 입니다.</h3>
<p>Gura 홈쇼핑</p>
<p>겨울을 미리 준비하세요~</p>
</body>
</html>