<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
.qrcode-text-btn {
  display: inline-block;
  height: 1em;
  width: 1em;
  background: url(qr_icon.svg) 50% 50% no-repeat;
  cursor: pointer;
}

.qrcode-text-btn > input[type=file] {
  position: absolute;
  overflow: hidden;
  width: 1px;
  height: 1px;
  opacity: 0;
}


</style>
<body>

<input type=text class=qrcode-text>
<label class=qrcode-text-btn>
	<input type=file accept="image/*" capture=environment tabindex=-1>
</label>  
       


</body>
</html>