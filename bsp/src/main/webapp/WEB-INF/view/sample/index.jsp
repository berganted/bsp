<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/bsp/css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="/bsp/js/index.js"></script>
</head>
<script>
$(function(){
	$(".abc").each(function(){
		var idx = $(this).index('.abc');
		console.log($(this).val().length)
		if($(this).val().length>20){
			$('.blah').eq(idx).attr('src',$(this).val())
		}
	})
})
</script>
<body> 
    <jsp:include page="../include/header.jsp"></jsp:include>
    <!-- <form method="post" name="frm" id="frm" action="ad.do"
									enctype="multipart/form-data"> -->
    <div class="wrap">
        
        <!-- visual 부분 -->
        <div class="index_visual">
            <div class="index_sideCategory7">
                <div class="index_quickCate">빠른분야찾기</div>
                <div class="index_quickCateDetail">
                    <li><a href="#">BSP NOW</a></li>
                    <li><a href="#">국내도서</a></li>
                    <li><a href="#">외국도서</a></li>
                    <li><a href="#">웹소설/코믹</a></li> 
                </div>
            </div>
            <div class="swiper-container mySwiper">
                <div class="swiper-wrapper">
                
                  <div class="swiper-slide" style="background-image: url('/bsp/img/mbook01.png');">&nbsp;</div> <!-- &nbsp; 공백 -->
                  <div class="swiper-slide" style="background-image: url('/bsp/img/mbook02.png');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('/bsp/img/mbook03.png');">&nbsp;</div>
                  <div class="swiper-slide" style="background-image: url('/bsp/img/mbook04.png');">&nbsp;</div> 
                </div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
            <div class="index_container">
                <div class="index_randomAds">
                <c:forEach var="vo" items="${list5 }" varStatus="status">
                    <div class="index_Ads01">
                    	<div class="index_ad">AD</div>
                        <a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                        <img  src="/bsp/ad/${vo.ad_img }"></a>
                    </div>
                 </c:forEach>  
                  <c:forEach var="vo" items="${list6 }" varStatus="status">  
                    <div class="index_Ads02">
                    	<div class="index_ad">AD</div>
                    	<a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                        <img src="/bsp/ad/${vo.ad_img }"></a>
                   	</div>  
                  </c:forEach>                   
                </div>
                <div class="index_todaysBooks mySwiper">
                    <div class=" swiper-wrapper">
                    <c:forEach var="vo" items="${list4 }" varStatus="status">
                        <div class=" index_todaysBooks swiper-slide">
                            <div class="index_todaysThumnail"><a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                                <img src="${vo.b_imgmain }" alt=""></a>
                            </div>
                            <div class="index_todayDetails">
                                <div class="index_tdContext">오늘의 책</div>
                               	<div class="index_todayDetails_in"> ${vo.b_content }</div>
                                <div class="index_todayDetails_in">${vo.b_title } | ${vo.b_author }</div>
                            </div>
                        </div>
                        </c:forEach> 
                    </div>
                    <div class="swiper-button-next" id="index_next"></div><!--강제로만듬-->
                    <div class="swiper-button-prev" id="index_prev"></div>
                </div>
                <div class="index_rank">
                    <div class="index_info">
                        <div class="index_ranContent">
                            <div class="index_board_area">
                               <div class="index_board_title on">베스트셀러</div>
                               <div class="index_board_title" style="margin-right: 60px;">인기검색어</div>
                               <div class="index_board_content" id="index_board_notice">
	                              <div class="index_bestCate">
	                              	 <form method="get" name="searchForm" id="searchForm" action="" onchange="$('#searchForm').submit();">
	                               	  <select id="b_ctgno1" name="b_ctgno1" size="1">
	                               	  		<option value="1"<c:if test="${param.b_ctgno1==1}"> selected</c:if>>국내도서</option>
	                               	  		<option value="2"<c:if test="${param.b_ctgno1==2}"> selected</c:if>>외국도서</option>
	                                 </select>
	                               	  </form>
	                              </div>
	                           <div class="bestCate_option">  
                               <c:forEach var="vo" items="${best }" varStatus="status">
                                  <ul>
                                  	<li>
                                  	  <a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                                      ${vo.b_title } | ${vo.b_author }
                                      </a>
                                    </li>
                                  </ul>
                               </c:forEach>
                               </div> 
                               </div>
                               <div class="index_board_content" id="index_board_data">
                               	<div class="index_searchRank">
                                 <ul>
                                 	<c:forEach var="vo" items="${popular }" varStatus="status">
                                     	<li> ${vo.p_word } <span><c:if test="${vo.cnt >0}"><img src="/bsp/img/logo/up.png" alt="">&nbsp;${vo.cnt }</c:if>
                                                                 <c:if test="${vo.cnt==0}"><img src="/bsp/img/logo/equal.png" alt="">&nbsp;${vo.cnt }</c:if>
                                                                 <c:if test="${vo.cnt <0}"><img src="/bsp/img/logo/down.png" alt="">&nbsp;${fn:replace(vo.cnt, '-', '')}</c:if></span></li>
                                    </c:forEach>                                                            
                                 </ul>
                                 </div>
                              </div>
                            </div>
                        </div>                        
                    </div>
                </div>
                <div class="index_NowBooks">
                    <div class="index_NowBooksTitle">BSP NOW ></div>
                <c:forEach var="vo" items="${newbook }" varStatus="status">
                    <div class="index_NowBooksContents">
                        <div class="index_NowBooksImg">
                        	 <a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                             <img src="${vo.b_imgmain }" alt="">
                        	<input type="hidden"  class="abc" value="${vo.b_imgmain }"/> 
                        	</a>   
                        </div>                        
                        <div class="index_NowBooksDetail">
                            <ul>
                                <li><a class="index_NowD1">${vo.b_author} 작가 신작</a></li>
                                <li><a class="index_NowD2">${vo.b_title }</a></li>
                                <li><a class="index_NowD3">${vo.b_author} | ${vo.b_publisher }</a></li>
                                <li><a class="index_NowD4"><fmt:formatNumber type="currency" value="${vo.b_price }" pattern="#,###"/> 원</a></li>
                            </ul>
                        </div>
                    </div>
                    </c:forEach>  
                </div>
            </div>            
            <div class="index_recentProduct">
                <div class="index_NowBooksTitle">화제의 책 ></div>
            <c:forEach var="vo" items="${list4 }" varStatus="status">
                <div class="index_NowBooksContents">
                    <div class="index_NowBooksImg">
                    	<a href="/bsp/book/Book_detail.do?b_no=${vo.b_no }&b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgno1=${bookVo.b_ctgno1}">
                        <img src="${vo.b_imgmain }" alt="">
                        <input type="hidden"  class="abc" value="${vo.b_imgmain }"/>  
                        </a>
                    </div>
                    <div class="index_NowBooksDetail">
                        <ul>                            
                            <li><a class="index_NowD2">${vo.b_title }</a></li>
                            <li><a class="index_NowD3">${vo.b_author} | ${vo.b_publisher }</a></li>
                            <li><a class="index_NowD4"><fmt:formatNumber type="currency" value="${vo.b_price }" pattern="#,###"/> 원</a></li>
                        </ul>
                    </div>
                </div>  
            </c:forEach> 
            </div>
            </div>  
          	
            <jsp:include page="../include/quick.jsp"></jsp:include>            
        </div> 
       <!-- </form> -->  
    <jsp:include page="../include/footer.jsp"></jsp:include>    
</body>
</html>