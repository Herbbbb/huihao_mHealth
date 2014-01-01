<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<script language="javascript">
  function isdate(strDate){
   var strSeparator = "-"; //���ڷָ���
   var strDateArray;
   var intYear;
   var intMonth;
   var intDay;
   var boolLeapYear;
   
   strDateArray = strDate.split(strSeparator);
   
   if(strDateArray.length!=3) return false;
   
   intYear = parseInt(strDateArray[0],10);
   intMonth = parseInt(strDateArray[1],10);
   intDay = parseInt(strDateArray[2],10);
   
   if(isNaN(intYear)||isNaN(intMonth)||isNaN(intDay)) return false;
   
   if(intMonth>12||intMonth<1) return false;
   
   if((intMonth==1||intMonth==3||intMonth==5||intMonth==7||intMonth==8||intMonth==10||intMonth==12)&&(intDay>31||intDay<1)) return false;
   
   if((intMonth==4||intMonth==6||intMonth==9||intMonth==11)&&(intDay>30||intDay<1)) return false;
   
   if(intMonth==2){
      if(intDay<1) return false;
      
      boolLeapYear = false;
      if((intYear%100)==0){
         if((intYear%400)==0) boolLeapYear = true;
      }
      else{
         if((intYear%4)==0) boolLeapYear = true;
      }
      
      if(boolLeapYear){
         if(intDay>29) return false;
      }
      else{
         if(intDay>28) return false;
      }
   }
   
   return true;
} 
  function check()
  {
    medid=window.document.form4.medId.value.length;
    mednamelen=window.document.form4.medName.value.length;
    medclasslen=window.document.form4.medClass.value.length;
    medpricelen=window.document.form4.medPrice.value.length;
    meddatelen=window.document.form4.medDate.value.length;
    medspecificationlen=window.document.form4.medSpecification.value.length;
    medintroducationlen=window.document.form4.medIntroducation.value.length;
    medstocklen=window.document.form4.medStock.value.length;
    medbeensoldlen=window.document.form4.medBeenSold.value.length;
    meddiscountlen=window.document.form4.medDiscount.value.length;
    medname=window.document.form4.medName.value;
    medclass=window.document.form4.medClass.value;
    medprice=window.document.form4.medPrice.value;
    meddate=window.document.form4.medDate.value;
    medspecification=window.document.form4.medSpecification.value;
    medintroducation=window.document.form4.medIntroducation.value;
    medstock=window.document.form4.medStock.value;
    medbeensold=window.document.form4.medBeenSold.value;
    meddiscount=window.document.form4.medDiscount.value;
    if(medid==0) alert("��������׼�ĺ�");
    else if(mednamelen==0)  alert("������ҩƷ����");
    else if(medclasslen==0) alert("������ҩƷ���");
    else if(medpricelen==0) alert("������ҩƷ����");
    else if(meddatelen==0) alert("��������������");
    else if(medspecificationlen==0) alert("������ҩƷ���");
    else if(medintroducationlen==0) alert("������ҩƷ���");
    else if(medstocklen==0) alert("������ҩƷ���");
    else if(medbeensoldlen==0) alert("������ҩƷ���۳���");
    else if(meddiscountlen==0) alert("������ҩƷ�Ż���Ϣ");
    else if(!isNaN(medname)) alert("ҩƷ���Ʋ���Ϊ���֣�����������");
    else if(!isNaN(medclass)) alert("ҩƷ�����Ϊ���֣�����������");
    else if(isNaN(medprice)) alert("ҩƷ���۱���Ϊ���֣�����������");
    else if(!isdate(meddate)) alert("���ڸ�ʽΪxxxx-xx-xx������������");
    else if(!isNaN(medspecification)) alert("ҩƷ�����Ϊ���֣�����������");
    else if(!isNaN(medintroducation)) alert("ҩƷ��鲻��Ϊ���֣�����������");
    else if(isNaN(medstock)) alert("������Ϊ���֣�����������");
    else if(isNaN(medbeensold)) alert("���۳�������Ϊ���֣�����������");
    else if(!isNaN(meddiscount)) alert("�Ż���Ϣ����Ϊ���֣�����������");
    else form4.submit();
  }
</script>
</head>
<body background="images/bg.png">
<table cellpadding=0 cellspacing=0  width="100%" align="center" >
	<tr>
		
	  <td>
	  			
		    <table width="90%" border="0" cellspacing="0" cellpadding="0"  align="center">
              <tr>
                <td>
                <form name="form4" method="post" action="newPill.do">
                <p>&nbsp;</p>
                  <h3 align="center">��������дҩƷ��Ϣ</h3>
                  <table width="300" border="0" align="center">
                    <tr>
                      <td width="100">��׼�ĺţ�</td>
                      <td width="184"><label>
                        <input name="medId" type="text" id="medId">
                      </label></td>
                    </tr>
                    <tr>
                      <td>ҩƷ���ƣ�</td>
                      <td><label>
                        <input name="medName" type="text" id="medName">
                      </label></td>
                    </tr>
					<tr>
                      <td>ҩƷ���:</td>
                      <td><label>
                        <input name="medClass" type="text" id="medClass">
                      </label></td>
                    </tr>                    
					<tr>
                      <td>ҩƷ����:</td>
                      <td><label>
                        <input name="medPrice" type="text" id="medPrice">
                      </label></td>
                    </tr>
                    <tr>
                      <td>��������:</td>
                      <td><label>
                        <input name="medDate" type="text" id="medDate">
                      </label></td>
                    </tr>
                    <tr>
                      <td>ҩƷ���:</td>
                      <td><label>
                        <input name="medSpecification" type="text" id="medSpecification">
                      </label></td>
                    </tr>
                    <tr>
                      <td>ҩƷ���:</td>
                      <td><label>
                        <input name="medIntroducation" type="text" id="medIntroducation">
                      </label></td>
                    </tr>
                     <tr>
                      <td>���:</td>
                      <td><label>
                        <input name="medStock" type="text" id="medStock">
                      </label></td>
                    </tr>
                     <tr>
                      <td>���۳���:</td>
                      <td><label>
                        <input name="medBeenSold" type="text" id="medBeenSold">
                      </label></td>
                    </tr>
                     <tr>
                      <td>�Ż���Ϣ:</td>
                      <td><label>
                        <input name="medDiscount" type="text" id="medDiscount">
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