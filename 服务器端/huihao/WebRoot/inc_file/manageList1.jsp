<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="mybean.PillBean" %>
<%@ page import="mybean.UserLogin"  %>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%	String str1="previous";
	String str2="next";

	UserLogin login = null;
	login = (UserLogin)session.getAttribute("login");
		
		PillBean puser = null;
		puser = (PillBean)session.getAttribute("puser");
		if(puser==null){
			response.sendRedirect("manageproduct1.do");
		}else{
			puser.setPageSize(8);		
			CachedRowSetImpl row = puser.getRow();
			int pageCount = puser.getPageCount();
			int currentPage = puser.getCurrentPage();
			int rowCount = puser.getRowCount();
			int pageSize = puser.getPageSize();
%>
<table width="260" height="50" border="0" align="center">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table align="center" border="0" cellspacing="1">
  		<tr>
    		<th width="80">��׼�ĺ�</th>
    		<th width="80">����</th>
    		<th width="80">���</th>
    		<th width="80">����</th>
			<th width="80">��������</th>
			<th width="80">���</th>
			<th width="80">ҩƷ���</th>
			<th width="80">���</th>
			<th width="80">���۳���</th>
			<th width="80">�Ż���Ϣ</th>
  		</tr>
  	<%		
			row.absolute((currentPage-1)*pageSize+1);
			for(int i = 1; i<= pageSize;i ++){							
	%>
	<tr>
		<td><label><input name="serId" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medId") %>></label></td>
		<td align="center"><label><input name="serPassword" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medName") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medClass") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medPrice") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medDate") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medSpecification") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medIntroducation") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medStock") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medBeenSold") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medDiscount") %>></label></td>
	</tr>				
	<% 		
				if(!row.next())break;
			}
			
	%>
	
</table>
	<br>
    <br/> 			
    <div align="center"><a href='manageproduct1.do?id=<%=str1 %>' target="mainFrame">��һҳ |</a><a href='manageproduct1.do?id=<%=str2 %>' target="mainFrame"> ��һҳ</a>&nbsp;&nbsp; ҩƷ�б�<%=pageCount %>ҳ&nbsp; <%=rowCount %>��ҩƷ&nbsp; ��ǰ�ǵ�<%=currentPage %>ҳ
  <%  	}
		
 %>  
</div>
