<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.sql.*"%>
  <%@page import="myutils.ConnectionUtils"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script language="javascript">
  function check()
  {
    idlen=window.document.form6.id.value.length;
    text=window.document.form6.text.value.length;
    seridlen=window.document.form6.serId.value.length;
    id=window.document.form6.id.value;
    serid=window.document.form6.serId.value;
    if(idlen==0)  alert("������֪ͨ���");
    else if(text==0)  alert("������֪ͨ����");
    else if(seridlen==0)  alert("�������֪ͨҵ��Ա���");
    else if(isNaN(id))  alert("֪ͨ��ű���Ϊ���֣�����������");
    else if(isNaN(serid))  alert("ҵ��Ա��ű���Ϊ���֣�����������"); 
    else form6.submit();
  }
</script>
</head>
<body background="images/bg.png">
<% 
Connection conn=ConnectionUtils.getConnection();
	 Statement stmt =conn.createStatement();
  String sql="select *from postinfo";
 ResultSet rs=stmt.executeQuery(sql);
 int count=0;
   while(rs.next()){ count++;} 
   count+=1;
   rs.close();
  stmt.close();
  conn.close(); %> 
<table cellpadding=0 cellspacing=0  width="100%" align="center" >
	<tr>	
	  <td>
	  			
		    <table width="90%" border="0" cellspacing="0" cellpadding="0"  align="center">
              <tr>
                <td ><div align="center">
                  <h3><br>
                  �����������֪ͨ
				  </h3>
                  
                </div>
                  <form name="form6" method="post" action="addPost.do">
                  <table  border="0" align="center">
                    <tr>
                      <td width="80" >֪ͨ��ţ�</td>
                      <td ><label>
                        <input name="id" type="text"  size="10" readonly value=<%=count+"" %> maxlength="200">
                      </label></td>
                    </tr>
                     
                     
                    <tr>
                      <td colspan="2">֪ͨ���ݣ�</td>
                    </tr>
                    <tr>
                      <td colspan="2" ><label>
                        <textarea name="text" cols="60" rows="20"></textarea>
                      </label></td>
                    </tr>
                   <tr>  <td width="80" >��֪ͨҵ��Ա��ţ�</td>
                      <td ><label>
                        <input name="serId" type="text"  size="10" maxlength="200">
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
				  <br>
				  <br>
				  <br></td>
              </tr>
            </table></td>
	</tr>
</table>
</body>
</html>