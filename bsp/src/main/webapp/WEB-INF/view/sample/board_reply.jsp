<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>    
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="/bsp/css/index.css">
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="/bsp/smarteditor/js/HuskyEZCreator.js"></script>
    <script src="/bsp/js/index.js"></script>
	<script>
	function goSave() {
		oEditors.getById['content'].exec("UPDATE_CONTENTS_FIELD", []); 
		$("#frm").submit();
	}
	var oEditors;
	$(function(){
		oEditors = setEditor("content"); // 반드시 id를 적어야한다
	});
    </script>
    
</head>
<body>
    <%@ include file="/WEB-INF/view/include/header.jsp" %>
    <div class="FAQboard_sub">
            <div class="FAQboard_size">
                <h3 class="sub_title">문의글 작성</h3>
    
                <div class="bbs">
                <form method="post" name="frm" id="frm" action="insertReply.do" enctype="multipart/form-data" >
                <input type="hidden" name="m_no" value="${userInfo.m_no }"> 
                <input type="hidden" name="q_gno" value="${q_gno }"> 
                <input type="hidden" name="q_ono" value="${q_ono }">
                <input type="hidden" name="q_nested" value="${q_nested }">
                   
                    <table class="board_write">
                        <tbody>
                        <tr>
                            <th>제목</th> 
                            <td>
                                <input type="text" name="q_title" id="title" class="wid100" value=""/>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea name="q_content" id="content" style="width:100%"></textarea>
                            </td>
                        </tr>
                        <tr>
                        	<th>파일첨부</th>
                        	<td>
                        		<input type="file" name="file">
                        	</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="btnSet"  style="text-align:right;">
                        <a class="FAQboard_btn" href="javascript:goSave();">저장 </a>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    <%@ include file="/WEB-INF/view/include/footer.jsp" %> 
</body>
</html>