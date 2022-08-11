<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상부상酒</title>

<!--CSS 파일-->
<link  rel="stylesheet" href="${pageContext.request.contextPath}/resources/home/css/home.css">
<link  rel="stylesheet" href="${pageContext.request.contextPath}/resources/home/css/homeHeader.css">

<!--CDN-->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>

<!-- 로그인, 회원가입, 고객센터 -->
<div id="topBar">
    <ul>
		<li><a id="sign" href="/signup" >회원가입</a></li>
		<li><a id="sign" href="/login">로그인</a> </li>
		<li><a id="sign" href="/logout">로그아웃</a> </li>
		<li><a id="sign" href="/member/mypage" >마이페이지</a> </li>
						
       	<div class="dropdown">
	        <li class="dropbtn">
	        <a href="" class="link_menu">고객센터</a>
                  <div class="dropdown-content">
                          <p><a href="/faq/toFaq?cPage=1">FAQ</a></p>
                          <p><a href="/notice/toNotice?cPage=1">공지</a></p>
                          <p><a href="/qna/qnaList">1:1 문의</a></p>
                  </div>
	        </li>
           </div>
    </ul>
</div>


<!-- 로고 -->
<div id="mainLogo">
		<center>
			<a href="/">
			<img src="${pageContext.request.contextPath}/resources/home/img/logo_test2.jpg">
			</a>
		</center>
</div>

<!--nav 시작부분 -->

<div class="navScroll">
 <nav class="navbar navbar-expand-lg   navbar-light bg-white" id="navi">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="/md/list" id="navbardrop" data-toggle="dropdown">
              전체상품
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="/md/search?search=탁주">탁주</a>
              <a class="dropdown-item" href="/md/search?search=약·청주">약·청주</a>
              <a class="dropdown-item" href="/md/search?search=과실주">과실주</a>
              <a class="dropdown-item" href="/md/search?search=증류주">증류주</a>
              <a class="dropdown-item" href="/md/search?search=선물세트">선물세트</a>
            </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/event/toEvent">신상품</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/event/toEvent">베스트</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/event/toEvent">정기구독</a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="/event/toEvent">이벤트</a>
          </li>
          <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="/md/list" id="navbardrop" data-toggle="dropdown">
              커뮤니티
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="/md/search?search=공지사항">공지사항</a>
              <a class="dropdown-item" href="/md/search?search=1:1문의">1:1문의</a>
            </div>
          </li>
            

           <!-- <li class="nav-item dropdown dmenu">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
              Dropdown link
            </a>
            <div class="dropdown-menu sm-menu">
              <a class="dropdown-item" href="#">Link 1</a>
              <a class="dropdown-item" href="#">Link 2</a>
              <a class="dropdown-item" href="#">Link 3</a>
              <a class="dropdown-item" href="#">Link 4</a>
              <a class="dropdown-item" href="#">Link 5</a>
              <a class="dropdown-item" href="#">Link 6</a>
            </div>
          </li> -->
          

          </ul>
                              <!-- searchbar 검색바 -->
<div id="side_search" class="gnb_search">
<input name="search" type="text" id="search" class="inp_search" value="" required label="검색어" placeholder="검색어를 입력 해주세요.">
<a href="javascript:void(0);" id="search-button"><input type=image src="https://res.kurly.com/pc/service/common/1908/ico_search_x2.png" class="btn_search"></a>
</div>

      <!-- searchbar 아이콘 -->
          <div id="icon">
          <span >
            <a href="/mypage/myPageLike?cPage=1" id="heartbtn"><i class="far fa-heart"  style="font-size: 25px;"></i></a></span>
			<span style="margin:10px;margin-top: 15px;"><a href="/cart/cart" id="cartbtn"><i class="fas fa-shopping-cart" style="font-size: 22px;"></i></a> </span>          
          </div>


        </div>
      </nav>
         
         
         
         

<script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
/*
$(function() {
	  var lnb = $("#navScroll").offset().top;
	 
	  $(window).scroll(function() {
	   
	    var window = $(this).scrollTop();
	    
	    if(lnb <= window) {
	      $("#navScroll").addClass("fixed");
	    }else{
	      $("#navScroll").removeClass("fixed");
	    }
	  })
	});*/
</script>





<script>
$(document).ready(function () {
$('.navbar-light .dmenu').hover(function () {
        $(this).find('.sm-menu').first().stop(true, true).slideDown(150);
    }, function () {
        $(this).find('.sm-menu').first().stop(true, true).slideUp(105)
    });
});
/*
$(function() {
	  var lnb = $("#navScroll").offset().top;
	 
	  $(window).scroll(function() {
	   
	    var window = $(this).scrollTop();
	    
	    if(lnb <= window) {
	      $("#navScroll").addClass("fixed");
	    }else{
	      $("#navScroll").removeClass("fixed");
	    }
	  })
	});*/
</script>




<script type="text/javascript">
//검색하기..
	$('#search-button').on('click', function() {
	  if($('#search').val()=="") {
		  alert("입력란을 작성해주세요.");
	  } else {
		  location.href = "/md/search?search="+$('#search').val(); 
	  }
	  });
  // 검색창 클래스 추가/삭제
  var searchInputAction = (function(){
    var $target = {};
    var _searchInputAction = {
      setSeletor: function(){
        $target = {
          $parent: $('#gnb'),
          $search: $('#gnb [name=sword]'),
          $deleteBtn: $('#searchInit'),
          $edit: $('#edit')
        }
        this.setAction();
      },
      setAction: function(){
        var that = this;
        $target.$search.focus(function(){
          that.changeClass($target.$search, 'add', 'focus');
          that.deleteCheck();
        }).blur(function(){
          that.changeClass($target.$search, 'remove', 'focus');
          that.deleteCheck(false);
        }).on('keyup', function(){
          if($target.$edit.val() !== 'Y'){
            $target.$edit.val('Y');
          }
          that.deleteCheck();
        });
        $target.$deleteBtn.on('click', function(){
          $target.$search.val('');
          that.deleteCheck();
        });
      },
      deleteCheck: function(type){
        var that = this, count = $.trim($target.$search.val()).length;
        if(count === 0 || (typeof type !== 'undefined' &&  !type) ){
          that.changeClass($target.$deleteBtn, 'remove', 'on');
        }else{
          that.changeClass($target.$deleteBtn, 'add', 'on');
        }
      },
      changeClass: function(target, type, className){
        if(type === 'add'){
          target.addClass(className);
        }else{
          target.removeClass(className);
        }
      }
    }
    _searchInputAction.setSeletor();
  })();
  // 로고 클릭 이벤트
  $('#header .link_main').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    if (url.indexOf('/') === 0) {
      url = window.location.origin + url;
    }
    KurlyTracker.setAction('select_main_logo', {"url": url}).sendData();
    location.href = url;
  });
  // 찜하기 아이콘 클릭이벤트
  $('#gnbMenu .btn_pick').on('click', function(e) {
    e.preventDefault();
    KurlyTracker.setAction('select_my_kurly_pick_list', { selection_type: 'header' }).sendData();
    location.href = $(this).attr('href');
  });
  
</script>
</html>