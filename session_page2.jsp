<%@ page import="java.text.*" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'session_page2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"17754",secure:"17759"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-13" data-genuitec-path="/MyLogin/WebRoot/session_page2.jsp">
  <h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-13" data-genuitec-path="/MyLogin/WebRoot/session_page2.jsp">session内置对象</h1>
    <hr>
    <%
    	//SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
    	//Date d = new Date(session.getCreationTime());
    	//session.setAttribute("username", "admin");
     %>
     
    session的ID编号:<%= session.getId() %><br>
    从session中获取用户名:<%=session.getAttribute("username") %><br>
    从session中获取密码:<%= session.getAttribute("password") %><br>
    从session中获取年龄:<%= session.getAttribute("age") %><br>
    从session中保存的属性有:<%
    											String[] names = session.getValueNames();
    											for(int i = 0;i < names.length;i++){
    												out.println(names[i]+"&nbsp;&nbsp;");
    											}
     %><br>
  
  </body>
</html>
