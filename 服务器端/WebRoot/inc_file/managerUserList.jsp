<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="mybean.UserBean" %>
<%@ page import="mybean.UserLogin"  %>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%	String str1="previous";
	String str2="next";

	UserLogin login = null;
	login = (UserLogin)session.getAttribute("login");
		
		UserBean user = null;
		user = (UserBean)session.getAttribute("user");
		if(user==null){
			response.sendRedirect("managerUser.do");
		}else{
			user.setPageSize(8);		
			CachedRowSetImpl row = user.getRow();
			int pageCount = user.getPageCount();
			int currentPage = user.getCurrentPage();
			int rowCount = user.getRowCount();
			int pageSize = user.getPageSize();
%>
<table width="260" height="50" border="0" align="center">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table align="center" border="0" cellspacing="1">
  		<tr>
    		<th width="120">ҵ����Ա���</th>
    		<th width="80">����</th>
    		<th width="80">����</th>
    		<th width="80">�Ա�</th>
			<th width="80">����</th>
			<th width="80">�绰</th>
			<th width="160">����ҩƷ��׼�ĺ�</th>
			<th width="160">��ǩԼ����������</th>
			<th width="160">�Ѱݷþ���������</th>
            <th width="50">ɾ��</th>
  		</tr>
  	<%		
			row.absolute((currentPage-1)*pageSize+1);
			for(int i = 1; i<= pageSize;i ++){							
	%>
	<tr>
		<td><label><input name="serId" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serId") %>></label></td>
		<td align="center"><label><input name="serPassword" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serPassword") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serName") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serSex") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serAge") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serPhone") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("medId") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("havSignedAgency") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("havVisited") %>></label></td>
		<td align="center"><label><a href='confirmDeleteUser1.jsp?id=<%=row.getString("serId")%>' target="mainFrame" >ɾ��</a></label></td>
	</tr>				
	<% 		
				if(!row.next())break;
			}
			
	%>
	
</table>
	<br>
    <br/> <form action="register1.jsp" method="get" name="myform">
������Ҫ�����ҵ��Ա��� ��<input name="ID" type="text" maxlength="5">
<input name="sure" type ="submit"  value="�ύ">
    </form>			
    <div align="center"><a href='register.jsp?' target="mainFrame">���ҵ��Ա |</a><a href='managerUser.do?id=<%=str1 %>' target="mainFrame">��һҳ |</a><a href='managerUser.do?id=<%=str2 %>' target="mainFrame"> ��һҳ</a>&nbsp;&nbsp; �û��б�<%=pageCount %>ҳ&nbsp; <%=rowCount %>���û�&nbsp; ��ǰ�ǵ�<%=currentPage %>ҳ
  <%  	}
		
 %>  
</div>
