<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Home </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		
		<!-- css -->
		<style type="text/css">
			ul { 
				list-style : none;
				padding : 0; /*왼쪽 10px정도 떨어진 거 제거*/
				background-color : lightgray;
				overflow : hidden;
			}
			
			li a { 
				text-decoration : none; /*밑줄 제거*/
				color : black; /*글자 색깔 변경*/
				display : block; /*링크가 블락 단위로 변경됨*/
				padding : 20px 50px 20px 50px; /*간격 조절*/
			}
			li a {
				float : left; /*일렬로 정렬됨*/
			}
			li a:hover {
				background-color : orange; /*마우스 오버*/
			}	
			</style>
	</head>
	
	<body>
		<ul>
			<li><a href="http://www.naver.com/" >NAVER</a></li>
			<li><a href="http://www.google.com/">GOOGLE</a></li>
			<li><a href="http://www.jandi.com/">JANDI</a></li>
			<li><a href="http://www.youtube.com/">YOUTUBE</a></li>
		</ul>		
	</body>
</html>