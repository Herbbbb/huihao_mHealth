<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="mybean.PostBean" %>
<%@ page import="mybean.UserLogin"  %>
<%@ page import="com.sun.rowset.CachedRowSetImpl" %>

<%	String str1="previous";
	String str2="next";

	UserLogin login = null;
	login = (UserLogin)session.getAttribute("login");
		
		PostBean post = null;
		post = (PostBean)session.getAttribute("post");
		if(post==null){
			response.sendRedirect("managerPost.do");
		}else{
			post.setPageSize(8);		
			CachedRowSetImpl row = post.getRow();
			int pageCount = post.getPageCount();
			int currentPage = post.getCurrentPage();
			int rowCount = post.getRowCount();
			int pageSize = post.getPageSize();
%>
<table width="260" height="50" border="0" align="center">
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table align="center" border="0" cellspacing="1">
  		<tr>
    		<th width="80">֪ͨ���</th>
    		<th width="80">֪ͨ����</th>
    		<th width="80">֪ͨʱ��</th>
    		<th width="100">֪ͨҵ��Ա</th>
            <th width="50">ɾ��</th>
  		</tr>
  	<%		
			row.absolute((currentPage-1)*pageSize+1);
			for(int i = 1; i<= pageSize;i ++){							
	%>
	<tr>
		<td><label><input name="id" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("id") %>></label></td>
	
		<td align="center"> <label> <textarea name="text"  cols="40" rows=4" onfocus=this.blur() ><%=row.getString("text")%></textarea></label> </td>
			<td align="center"><label><input name="serPassword" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("date") %>></label></td>
		<td align="center"><label><input name="serName" type="text" maxlength="10" onfocus=this.blur() value=<%=row.getString("serId") %>></label></td>
		<td align="center"><label><a href='deletePost.do?id=<%=row.getString("id")%>' target="mainFrame">ɾ��</a></label></td>
	</tr>				
	<% 		
				if(!row.next())break;
			}
			
	%>
	
</table>
	<br>
    <br/>	
    <div align="center"><a href='addPost.jsp?'  target="mainFrame">���֪ͨ |</a><a href='managerPost.do?id=<%=str1 %>' target="mainFrame">��һҳ |</a><a href='managerPost.do?id=<%=str2 %>' target="mainFrame"> ��һҳ</a>&nbsp;&nbsp; ֪ͨ�б�<%=pageCount %>ҳ&nbsp; <%=rowCount %>��֪ͨ&nbsp; ��ǰ�ǵ�<%=currentPage %>ҳ
  <%  	}
		
 %>  
</div>
