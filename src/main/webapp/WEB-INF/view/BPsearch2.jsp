<!doctype html>
<%@page import="java.util.List"%>
<%@page import="vo.ListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%List<ListVO> ListPro = (List<ListVO>)request.getAttribute("ListPro"); %>
<html>
 
<head>
<meta name="viewport" charset="utf-8" content="user-scalable=no, initial-scale=1, maximum-scale=1">
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>

<script>
$(function(){
	BPAjax();
});

function BPAjax(){
	$.ajax({
		type : 'post',
		url : '/pp/BPAjax.do',
		dataType : 'html',
		data : $("#cardcode").serialize(),
		success : function(data){
			document.write(data);
		},
		error : function(){
			console.log("에러")
		},
		async : true
	});
}


</script>
</head>
<body>
<form action="BPAjax();">
	<input type=hidden name="test" id="cardcode" value="2">
</form>

</body> 
</html>