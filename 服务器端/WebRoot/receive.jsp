<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@ page import="java.io.*,wyy.MyConverter,wyy.DB" %>
<% 
   String param1=request.getParameter("params1").trim();
   String param2=request.getParameter("params2").trim();
   
   String serId=MyConverter.unescape(param1);
   String serPassword=MyConverter.unescape(param2);
   
   String sqla="select serPassword from servicer where serId='"+serId+"'";
   if(DB.isExist(sqla)){
				String sql = "select serPassword from servicer where serId='"+serId+"'";
				String password=DB.getInfo(sql).trim();//�����ݿ�õ�����
				if(serPassword.equals(password)){
				   out.println(MyConverter.escape("��¼�ɹ�"));	
				}
				else{
				   out.println(MyConverter.escape("��¼ʧ��"));	 
				}
	}
   else
   {
       out.println(MyConverter.escape("�û������ڣ�����������"));
   }

%>

    