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
    
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script language="javascript">
  function check()
  {
    seridlen=window.document.form1.serId.value.length;
    serpassword=window.document.form1.serPassword.value.length;
    sername=window.document.form1.serName.value.length;
    sersexlen=window.document.form1.serSex.value.length;
    seragelen=window.document.form1.serAge.value.length;
    serphonelen=window.document.form1.serPhone.value.length;
    medidlen=window.document.form1.medId.value.length;
    havsignedagencylen=window.document.form1.havSignedAgency.value.length;
    havvisitedlen=window.document.form1.havVisited.value.length;
    serid=window.document.form1.serId.value;
    sersex=window.document.form1.serSex.value;
    serage=window.document.form1.serAge.value;
    serphone=window.document.form1.serPhone.value;
    medid=window.document.form1.medId.value;
    havsignedagency=window.document.form1.havSignedAgency.value;
    havvisited=window.document.form1.havVisited.value;
    if(seridlen==0) alert("������ҵ��Ա���");
    else if(serpassword==0)  alert("������ҵ��Ա����");
    else if(sername==0) alert("������ҵ��Ա����");
    else if(sersexlen==0) alert("������ҵ��Ա�Ա�");
    else if(seragelen==0) alert("������ҵ��Ա����");
    else if(serphonelen==0) alert("������ҵ��Ա��ϵ��ʽ");
    else if(medidlen==0) alert("������ҩƷ����");
    else if(havsignedagencylen==0) alert("������ǩԼ����������");
    else if(havvisitedlen==0) alert("�������Ѱݷþ���������");
    else if(isNaN(serid))  alert("ҵ��Ա��ű���Ϊ���֣�����������");
    else if(sersex!="��"&&sersex!="Ů")  alert("�Ա�������Ч���������л�Ů");
    else if(isNaN(serage))  alert("�������Ϊ���֣�����������");
    else if(isNaN(serphone)) alert("��ϵ��ʽ����Ϊ���֣�����������");
    else if(!isNaN(medid))  alert("ҩƷ���಻��Ϊ���֣�����������");
    else if(isNaN(havsignedagency))  alert("ǩԼ��������������Ϊ���֣�����������");
    else if(isNaN(havvisited))  alert("�Ѱݷþ�������������Ϊ���֣�����������");
    else form1.submit();
  }
</script>
  </head>
  <%UserLogin login = null;
	login = (UserLogin)session.getAttribute("login");
	String id= StringUtils.StringEcode(login.getSerId());
  Connection conn=ConnectionUtils.getConnection();
	 Statement stmt =conn.createStatement();
  String sql="select *from servicer";
 ResultSet rs=stmt.executeQuery(sql);
   while(rs.next()){
 if(rs.getString("serId").equalsIgnoreCase(id)){
 String serPassword=rs.getString("serPassword");
 String serName=rs.getString("serName");
 String serSex=rs.getString("serSex");
 String serAge=rs.getString("serAge");
 String serPhone=rs.getString("serPhone");
 String medId=rs.getString("medId");
 String havSignedAgency=rs.getString("havSignedAgency");
 String havVisited=rs.getString("havVisited");%>
 <body background="images/bg.png">
  <table border=0 cellpadding=0 cellspacing=0  width="100%" align="center" >
	<tr><td>
	 <br><table cellpadding=0 cellspacing=0  width="1000" align="center" >
	<tr>	
	  <td>	
		    <table width="90%" border="0" cellspacing="0" cellpadding="0"  align="center">
              <tr>
                <td>
                <form name="form1" method="post" action="updateUser.do" >
                <p>&nbsp;</p>
                  <h3 align="center">��������д�޸���Ϣ</h3>
                  <table width="300" border="0" align="center">
                    <tr>
                      <td width="100">ҵ��Ա��ţ�</td>
                      <td width="184"><label>
                        <input name="serId" value=<%=id %> readonly type="text" id="serId">
                      </label></td>
                    </tr>
                    <tr>
                      <td>���룺</td>
                      <td><label>
                        <input name="serPassword" type="text" value=<%=serPassword %> id="serPassword">
                      </label></td>
                    </tr>
					<tr>
                      <td>������</td>
                      <td><label>
                        <input name="serName" type="text" value=<%=serName%> id="serName">
                      </label></td>
                    </tr>                    
					<tr>
                      <td>�Ա�</td>
                      <td><label>
                        <input name="serSex" type="text" value=<%=serSex %> id="serSex">
                      </label></td>
                    </tr>
                    <tr>
                      <td>���䣺</td>
                      <td><label>
                        <input name="serAge" type="text" value=<%=serAge %> id="serAge">
                      </label></td>
                    </tr>
                    <tr>
                      <td>�绰</td>
                      <td><label>
                        <input name="serPhone" type="text" value=<%=serPhone %> id="serAge">
                      </label></td>
                    <tr>
                      <td>����ҩƷ��׼�ĺţ�</td>
                      <td><label>
                        <input name="medId" type="text" value=<%=medId%> id="medId">
                      </label></td>
                    </tr>
                    <tr>
                      <td>��ǩԼ������������</td>
                      <td><label>
                        <input name="havSignedAgency" type="text" value=<%=havSignedAgency%> id="havSignedAgency">
                      </label></td>
                    </tr>
                      <tr>
                      <td>�Ѱݷþ�����������</td>
                      <td><label>
                        <input name="havVisited" type="text" value=<%=havVisited%> id="havVisited">
                      </label></td>
                    </tr>
				    <tr>
                      <td colspan="2" align="center"><label>
                        <input type="button" name="sub" value="�ύ" onclick="check()">
                        <input name="reset" type="reset" id="reset" value="����">
                      </label></td>
                    </tr>
                  </table>
                </form>
                </td>
              </tr>
            </table></td>
	</tr>
</table>
</table>
  </body>
  
  <%
 }}
  rs.close();
  stmt.close();
  conn.close();
  %> 
  
</html>
