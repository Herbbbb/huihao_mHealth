<%@ page language="java" import="java.util.*"  contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="myutils.ConnectionUtils" %>
 <%@page import="java.sql.*"%>
 <%@page import="mybean.UserLogin"%>
 <%@page import="myutils.StringUtils"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ۺ���ҩҵ�����ϵͳ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body background="images/bg.png">
  <table align="center" border="0" cellspacing="1">
  		<tr>
    		<th width="100">�����̱��</th>
    		<th width="80">����������</th>
    		<th width="80">�����̵�ַ</th>
    		<th width="80">�����̵绰</th>
    		<th width="80">��������Ա����</th>
    		<th width="80">Ԥ������</th>
    		<th width="80">Ԥ��ҩ��</th>
    		<th width="80">�ݷ���ԱId</th>
    		<th width="80">�ݷ�ʱ��</th>
    	</tr>
  <%
  Connection conn=ConnectionUtils.getConnection();
	 Statement stmt =conn.createStatement();
  String sql="select *from agency";
 ResultSet rs=stmt.executeQuery(sql);
   while(rs.next()){
 String serPassword=rs.getString("ageId");
 String serName=rs.getString("ageName");
 String serSex=rs.getString("ageAddress");
 String serAge=rs.getString("agePhone");
 String medId=rs.getString("ageNumberOfWorker");
  String preNumber=rs.getString("preNumber");
   String medName=rs.getString("medName");
    String serId=rs.getString("serId");
     String datetime=rs.getString("datetime");
%>
    	<tr>
		<td align="center"><label><input name="serPassword" type="text" maxlength="10" onfocus=this.blur() value=<%=serPassword%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=serName%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=serSex%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=serAge %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=medId%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=preNumber%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=medName%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=serId%>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=datetime%>></label></td>
	</tr>		
  
  
  <%
 }
  rs.close();
  stmt.close();
  conn.close();
  %> 
  </body>
</html>
