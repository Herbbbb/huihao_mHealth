<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>�ۺ���ҩҵ�����ϵͳ</title>
<script language="javascript">
  function keyDown()
  {
     if(event.keyCode==13)
       check();
  }
  document.onkeydown=keyDown;
  function check()
  {
     name=window.document.form.username.value.length;
     pwd=window.document.form.password.value.length;
     code=window.document.form.code.value.length;
     if(name==0)  alert("�������û���");
     else  if(pwd==0)  alert("����������");
     else  if(code==0)  alert("��������֤��");
     else  window.document.form.submit();
  }
</script>
</head>
<body bgcolor="#1D5BA6">
<table cellpadding=0 cellspacing=0  width="100%" align="center">
	<tr bgcolor="#1D5BA6"><td height="100" colspan="3">&nbsp;</td></tr>
	<tr>
	  <td height="368" width="380" bgcolor="#1D5BA6">&nbsp;</td>
	  <td width="587">
         <form name="form" method="post" action="log.do">
              <table width="587" height="368" border="0" align="center" background="inc_pic/login.jpg">
				  	 <tr><td width="587" height="100" colspan="6">&nbsp;</td></tr>
				  	 <tr>
				  	  <td width="100" height="30">&nbsp;</td>
                      <td width="75"><font size="1px">��¼���ͣ�</font></td>
                      <td width="125"><label>
                        <select name="type" size="1">
                          <option value="user">ҵ��Ա</option>
                          <option value="admin">����Ա</option>
                        </select>
                      </label></td>
                      <td width="88">&nbsp;</td>
                      <td width="111" rowspan="4">
                        <img width="111" height="120" style="CURSOR: pointer" src="inc_pic/user_botton.gif" onclick="check()" onkeydown="keyDown()"></td>
                      <td width="88">&nbsp;</td>
                    </tr>
                    <tr>
                    <td width="100" height="30">&nbsp;</td>
                      <td width="75"><font size="1px">�û�����</font></td>
                      <td width="125"><label>
                        <input name="username" type="text" id="username">
                      </label></td>
                      <td width="88">&nbsp;</td>
                      <td width="88">&nbsp;</td>
                    </tr> 
                    <tr>
                    <td width="100" height="30">&nbsp;</td>
                      <td><font size="1px">���룺</font></td>
                      <td><label>
                        <input name="password" type="password" id="password">
                      </label></td>
                      <td width="88">&nbsp;</td>
                      <td width="88">&nbsp;</td>
                    </tr>
                    <tr>
                    <td width="100" height="30">&nbsp;</td>
                      <td><font size="1px">��֤�룺</font></td>
                      <td><table cellpadding="0" cellspacing="0"><tr><td><input name="code" type="text" id="code" size="12">
                      </td><td><img style="CURSOR: pointer" onclick=this.src=this.src; src="inc_file/code.jsp"></td></tr></table></td>
                      <td width="88">&nbsp;</td>
                      <td width="88">&nbsp;</td>
                    </tr>
				    <tr><td width="587" colspan="4">&nbsp;</td></tr>
                  </table>
                </form>
                </td>
                <td width="*" bgcolor="#1D5BA6">&nbsp;</td>
              </tr>
             <tr bgcolor="#1D5BA6"><td  width="1000" height="100" colspan="3">&nbsp;</td></tr> 
</table>
</body>
</html>