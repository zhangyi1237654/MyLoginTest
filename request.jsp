<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'request.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"17754",secure:"17759"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-11" data-genuitec-path="/MyLogin/WebRoot/request.jsp">
	<h1 data-genuitec-lp-enabled="false" data-genuitec-file-id="wc3-11" data-genuitec-path="/MyLogin/WebRoot/request.jsp">request内置对象</h1>
	<%
		request.setCharacterEncoding("utf-8");
		request.setAttribute("password", "123456");
	 %>
	<% String s = request.getParameter("username"); %>
	用户名:<% out.print(s); %><br>
	爱好:<%
					if(request.getParameterValues("favorite")!=null){
						String[] favorites = request.getParameterValues("favorite");
						for(int i = 0;i<favorites.length;i++){
							out.println(favorites[i]+"&nbsp;");
						}
					}
	 %><br>
	 密码:<%= request.getAttribute("password") %><br>
	 请求体的MIME类型:<%= request.getContentType() %><br>
	 协议类型及版本号:<%= request.getProtocol() %><br>
	 服务器主机名:<%= request.getServerName() %><br>
	 服务器端口号:<%= request.getServerPort() %><br>
	 请求文件的长度:<%= request.getContentLength() %><br>
	 请求客户端的IP地址:<%= request.getRemoteAddr() %><br>
	 请求的真实路径:<%= request.getRealPath("request.jsp") %><br>
	 请求的上下文路径:<%= request.getContextPath() %><br>
	 
  </body>
</html>
