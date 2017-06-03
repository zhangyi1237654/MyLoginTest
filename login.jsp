<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"17754",secure:"17759"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-2" data-genuitec-path="/MyLogin/WebRoot/login.jsp">
  	<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-2" data-genuitec-path="/MyLogin/WebRoot/login.jsp">用户登录</h1>
  	<hr>
  	<form  action = "dologin.jsp" name = "loginFrom" method = "post">
  		<table>
  			<tr>
  				<td>用户名:</td>
  				<td><input type = "text" name = "username"/></td>
  			</tr>
  			<tr>
  				<td>密码:</td>
  				<td><input type = "password" name = "password"/></td>
  			</tr>
  			<tr>
  				<td colspan = "2"><input type = "submit" value = "登录"></td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
