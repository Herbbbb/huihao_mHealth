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
 <%@ page
     import="org.jfree.chart.*,org.jfree.chart.plot.PiePlot,
     org.jfree.data.general.DefaultPieDataset,
     org.jfree.chart.servlet.ServletUtilities,
     java.awt.*,org.jfree.chart.title.TextTitle"%>
 <%@ page
     import="org.jfree.chart.labels.StandardPieSectionLabelGenerator"%>
 <%@ page import="java.text.NumberFormat"%>
 <%@page import="java.text.DecimalFormat"%>
 
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
  <table border=0 cellpadding=0 cellspacing=0  width="100%" align="center">
	<tr><td align="center">
  <%UserLogin login = null;
	login = (UserLogin)session.getAttribute("login");
	String id= StringUtils.StringEcode(login.getSerId());
  Connection conn=ConnectionUtils.getConnection();
	 Statement stmt =conn.createStatement();
  String sql="select *from servicer where serId = '"+id+"'";
 ResultSet rs=stmt.executeQuery(sql);
   while(rs.next()){
 String havSignedAgency=rs.getString("havSignedAgency");
 String havVisited=rs.getString("havVisited"); 
 double a=Double.parseDouble(havSignedAgency);//�������ݼ�
 double b=Double.parseDouble(havVisited);//�������ݼ�
 double c=a/b;
     DefaultPieDataset dataset = new DefaultPieDataset();
     dataset.setValue("�ɹ���",c);
     dataset.setValue("ʧ����", 1-c);
     //ͨ������������JFreeChart����
     JFreeChart chart = ChartFactory.createPieChart3D("ҵ����Ա�����ɹ��ʷֲ�ͼ",
             dataset, true, false, false);
 
     PiePlot pieplot = (PiePlot) chart.getPlot();
     //һ��ͻ���ı�ͼ�����������˺þ�Ҳû�ҵ����е�ʵ�ַ�ʽ����ӭ����ָ�� <?��������ҵ���������������޸�?>
 //pieplot.setExplodePercent("A",0.3D);//ը���ı�ͼ��Ŀǰʵ�ֻ�������
 
 //DecimalFormat:
 //NumberFormat:
 //StandardPieSectionLabelGenerator:
 //setLabelGenerator():    
     DecimalFormat df = new DecimalFormat("0.00%");//���һ��DecimalFormat������Ҫ������С������
     NumberFormat nf = NumberFormat.getNumberInstance();//���һ��NumberFormat����
     StandardPieSectionLabelGenerator sp = new StandardPieSectionLabelGenerator(
             "{0}{2}", nf, df);//���StandardPieSectionLabelGenerator����
     pieplot.setLabelGenerator(sp);//���ñ�ͼ��ʾ�ٷֱ�
 
 //û�����ݵ�ʱ����ʾ������
     pieplot.setNoDataMessage("��������ʾ");
     pieplot.setCircular(false);
     pieplot.setLabelGap(0.02D);
 
     pieplot.setIgnoreNullValues(true);//���ò���ʾ��ֵ
     pieplot.setIgnoreZeroValues(true);//���ò���ʾ��ֵ
 
 //������������  IT��ҵְҵ�ֲ�ͼ
     TextTitle textTitle = chart.getTitle();
     textTitle.setFont(new Font("����", Font.PLAIN, 20));
 
     //���ϵ���������
     PiePlot plot = (PiePlot) chart.getPlot();
     plot.setLabelFont(new Font("����", Font.PLAIN, 12));
 
     //ͼ���������� ��ͼ�����5��˵��
     chart.getLegend().setItemFont(new Font("����", Font.PLAIN, 12));
 
     String filename = ServletUtilities.saveChartAsPNG(chart, 500, 300,
             null, session);
     String graphURL = request.getContextPath()
             + "/DisplayChart?filename=" + filename;
 
 %> <img src="<%=graphURL%>" width=500 height=300 border=0
             usemap="#<%=filename %>"> </td><%
  
 }
  rs.close();
  stmt.close();
  conn.close();
  %>  
</table>
</body>
</html>


