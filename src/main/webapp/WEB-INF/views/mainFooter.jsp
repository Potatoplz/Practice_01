<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:set var="path" value="${ pageContext.request.contextPath }"/> 
<link  rel="stylesheet" href="${pageContext.request.contextPath}/resources/home/css/mainFooter.css">

        <footer>
            <div class="footer-about">
                <div class="footer-inner">
                    <a href="${ path }" class="logo">
                    	<img src="${ path }/resources/4earth/images/common/small_logo.png" alt="4Earth">
                    </a>	

	
	                    <div class="cop-info">
	                        <ul>
	                            <li>주식회사 상부상酒</li>
	                            <li>(04108) 서울특별시 마포구 백범로 23</li>
	                            <li><strong>통신판매업신고번호</strong> 2022-서울마포-0826</li>
	                            <li><strong>이메일 </strong><a href="mailto:sbsj@sbsj.co.kr">sbsj@sbsj.co.kr</a></li>
	                            <li><strong>개인정보보호책임자</strong> (주)상부상酒</li>
	                        </ul>
	                    </div>
	    
   	                    <div class="follow-sns">
	                        <strong>Follow Us</strong>
	                        <ul>
	                        
	                            <li><a href="javascript:void(0);"><i class="icon icon-instargram"></i>instargram</a></li>
	                            <li><a href="javascript:void(0);"><i class="icon icon-facebook"></i>facebook</a></li>
	                            <li><a href="javascript:void(0);"><i class="icon icon-youtube"></i>youtube</a></li>
	                        </ul>
	                    </div>
                </div>
            </div> <!-- // footer-about -->

            <div class="footer-copy">
                <div class="footer-inner">
                    <div class="terms">
                        <a href="javascript:void(0);">이용약관</a>
                        <a href="javascript:void(0);">개인정보처리방침</a>
                    </div>
                    <p class="copy">Copyright @ <strong>상부상酒 Co.</strong> All rights reserved.</p>
                </div>
            </div>
        </footer>
    </div>
</body>

</html>