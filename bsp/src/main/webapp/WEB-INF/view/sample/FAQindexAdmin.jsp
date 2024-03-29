<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/view/admin/include/headHtml.jsp" %>
 <script src="/bsp/js/script.js"></script>

</head>
<script type="text/javascript">


function check() {
	if ($("#allChk").prop('checked')) {
		for (var i=0; i<$('input[name="no"]').length; i++)
		$('input[name="no"]').eq(i).prop('checked', 'checked');
	} else {
		for (var i=0; i<$('input[name="no"]').length; i++)
		$('input[name="no"]').eq(i).prop('checked', '');
	}
}
</script>
<body> 
<div id="wrap">
	<!-- canvas -->
	<div id="canvas">
		<!-- S T A R T :: headerArea-->
		<%@ include file="/WEB-INF/view/admin/include/top.jsp" %>
		<!-- E N D :: headerArea--> 
		
		<!-- S T A R T :: containerArea-->
		<div id="container"> 
			<div id="content">
				<div class="con_tit">
					<h2>자주묻는질문 - [목록]</h2>
				</div>
				<!-- //con_tit -->
				<div class="con">
					<!-- 내용 : s -->
					<div id="bbs">
						<div id="blist">
							<p><span><strong>총 ${fboardVo.totCount }개</strong>  |  ${fboardVo.reqPage}/${fboardVo.totPage }페이지</span></p>
							<form name="frm" id="frm" action="delete2.do" method="post">
							<table width="100%" border="0" cellspacing="0" cellpadding="0" summary="관리자 관리목록입니다.">
								<colgroup>
								<col width="80px" />
								<col width="80px" />
	                            <col width="*" />
	                            <col width="100px" />
	                            <col width="190px" />
	                            <col width="90px" />
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first"><input type="checkbox" name="allChk" id="allChk" onClick="check(this, document.frm.no)"/></th>
										<th scope="col">번호</th>
										<th scope="col">제목</th> 
										<th scope="col">작성자</th> 
										<th scope="col">작성일</th> 
										<th scope="col" class="last">분류</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach var="vo" items="${list }">
									<tr>
								<td class="first"><input type="checkbox" name="no" id="no" value="${vo.faq_no}"/></td>
								<td>${vo.faq_no }</td>
                                <td class="txt_l" style="text-align: left;">
                                    <a href="FAQviewAdmin.do?faq_no=${vo.faq_no }&reqPage=${fboardVo.reqPage}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">
                                    ${vo.faq_title}</a>	
                                </td>
                                <td class="FAQboard_writer">
                                    ${vo.a_id }
                                </td>
                                <td class="date">${vo.faq_regdate }</td>
                                <td>[${vo.faq_cate}]</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
							</form>
							<div class="btn">
								<div class="btnLeft">
									<a class="btns" href="#" onclick="groupDel('no');"><strong>삭제</strong> </a>
								</div>
								<div class="btnRight">
									<a class="wbtn" href="FAQwriteAdmin.do"><strong>등록</strong> </a>
								</div>
							</div>
							<!--//btn-->
							<!-- 페이징 처리 -->
							<div class='page'>
									<c:if test="${fboardVo.strPage > fboardVo.pageRange}">
										<li><a href="FAQindexAdmin.do?reqPage=${fboardVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"></a>
									</c:if>
									<c:forEach var="rp" begin="${fboardVo.strPage }"
										end="${fboardVo.endPage }">
										<c:if test="${rp==fboardVo.reqPage }"> <strong>${rp }</strong></c:if>
										<c:if test="${rp!=fboardVo.reqPage }">
                                  	<a href='FAQindexAdmin.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' class='current'>${rp }</a></c:if>

									</c:forEach>
									<c:if test="${fboardVo.totPage > fboardVo.endPage}">
										<a
											href="FAQindexAdmin.do?reqPage=${fboardVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></c:if>
								</div>
							<!-- //페이징 처리 -->
							<form name="searchForm" id="searchForm" action=""  method="post">
								<div class="search">
									<select name="stype" title="검색을 선택해주세요">
										<option value="all">전체</option>
										<option value="title">제목</option>
										<option value="contents">내용</option>
									</select>
									<input type="text" name="sval" value="" title="검색할 내용을 입력해주세요" />
									<input type="image" src="<%=request.getContextPath()%>/img/admin/btn_search.gif" class="sbtn" alt="검색" />
								</div>
							</form>
							<!-- //search --> 
						</div>
						<!-- //blist -->
					</div>
					<!-- //bbs --> 
					<!-- 내용 : e -->
				</div>
				<!--//con -->
			</div>
			<!--//content -->
		</div>
		<!--//container --> 
		<!-- E N D :: containerArea-->
	</div>
	<!--//canvas -->
</div>
<!--//wrap -->

</body>
</html>