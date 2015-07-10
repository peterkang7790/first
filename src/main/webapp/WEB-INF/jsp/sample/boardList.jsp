<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>first</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
<script type='text/javascript'>

$(document).ready(function(){
	
	
	
});

</script>
<h2>게시판 목록</h2>
<table style="border:1px solid #ccc">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">모델아이디</th>
            <th scope="col">모델명</th>
            <th scope="col">년도</th>
            <th scope="col">작성일</th>
        </tr>
    </thead>
    <tbody>
   
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
            <script>
            	alert("123456");
            </script>
                <c:forEach items="${list}" var="row">
                    <tr>
                        <td>${row.MDL_ID }</td>
                        <td>${row.MDL_NM }</td>
                        <td>${row.MDL_YEAR }</td>
                        <td>${row.REG_DT }</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
         
    </tbody>
</table>
</body>
</html>