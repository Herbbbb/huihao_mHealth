<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script language="javascript">
  function check()
  {
    seridlen=window.document.form2.serId.value.length;
    serpassword=window.document.form2.serPassword.value.length;
    sername=window.document.form2.serName.value.length;
    sersexlen=window.document.form2.serSex.value.length;
    seragelen=window.document.form2.serAge.value.length;
    serphonelen=window.document.form2.serPhone.value.length;
    medidlen=window.document.form2.medId.value.length;
    havsignedagencylen=window.document.form2.havSignedAgency.value.length;
    havvisitedlen=window.document.form2.havVisited.value.length;
    serid=window.document.form2.serId.value;
    sersex=window.document.form2.serSex.value;
    serage=window.document.form2.serAge.value;
    serphone=window.document.form2.serPhone.value;
    medid=window.document.form2.medId.value;
    havsignedagency=window.document.form2.havSignedAgency.value;
    havvisited=window.document.form2.havVisited.value;
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
    else form2.submit();
  }
</script>
</head>
<body background="images/bg.png">
<table cellpadding=0 cellspacing=0  width="100%" align="center" >
	<tr>
	  <td >
	  			
		    <table width="90%" border="0" cellspacing="0" cellpadding="0"  align="center">
              <tr>
                <td>
                <form name="form2" method="post" action="reg.do" >
                <p>&nbsp;</p>
                  <h3 align="center">��������дע����Ϣ</h3>
                  <table width="300" border="0" align="center">
                    <tr>
                      <td width="100">ҵ��Ա��ţ�</td>
                      <td width="184"><label>
                        <input name="serId" type="text" id="serId">
                      </label></td>
                    </tr>
                    <tr>
                      <td>���룺</td>
                      <td><label>
                        <input name="serPassword" type="text" id="serPassword">
                      </label></td>
                    </tr>
					<tr>
                      <td>������</td>
                      <td><label>
                        <input name="serName" type="text" id="serName">
                      </label></td>
                    </tr>                    
					<tr>
                      <td>�Ա�</td>
                      <td><label>
                        <input name="serSex" type="text" id="serSex">
                      </label></td>
                    </tr>
                    <tr>
                      <td>���䣺</td>
                      <td><label>
                        <input name="serAge" type="text" id="serAge">
                      </label></td>
                    </tr>
                    <tr>
                      <td>�绰</td>
                      <td><label>
                        <input name="serPhone" type="text" id="serPhone">
                      </label></td>
                    </tr>
                    <tr>
                      <td>����ҩƷ��׼�ĺţ�</td>
                      <td><label>
                        <input name="medId" type="text" id="medId">
                      </label></td>
                    </tr>
                    <tr>
                      <td>��ǩԼ������������</td>
                      <td><label>
                        <input name="havSignedAgency" type="text" id="havSignedAgency">
                      </label></td>
                    </tr>
                     <tr>
                      <td>�Ѱݷþ�����������</td>
                      <td><label>
                        <input name="havVisited" type="text" id="havVisited">
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
</body>
</html>