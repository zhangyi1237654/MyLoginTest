<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Session_page1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"17754",secure:"17759"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-0" data-genuitec-path="/MyLogin/WebRoot/Session_page1.jsp">
    <h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-0" data-genuitec-path="/MyLogin/WebRoot/Session_page1.jsp">session内置对象</h1>
    <hr>
    <%
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    	Date d = new Date(session.getCreationTime());
    	session.setAttribute("username", "admin");
    	session.setAttribute("password", "123456");
    	session.setAttribute("age", 20);
    	
    	//设置当前session最大生成期限单位是秒
    	//session.setMaxInactiveInterval(10);
     %>
    session对象创建时间:<%=sdf.format(d) %><br>
    session的ID编号:<%=session.getId() %><br>
    从session中获取用户名:<%=session.getAttribute("username") %>
    
    
    <a href="session_page2.jsp" target="_blank">跳转到session_page2.jsp</a>
  </body>
</html>
