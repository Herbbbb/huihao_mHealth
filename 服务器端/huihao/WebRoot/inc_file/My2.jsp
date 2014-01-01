 <%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="org.jfree.chart.ChartFactory, 
org.jfree.chart.JFreeChart, 
org.jfree.chart.plot.PlotOrientation, 
org.jfree.chart.servlet.ServletUtilities, 
org.jfree.data.category.CategoryDataset, 
org.jfree.data.general.DatasetUtilities, 
org.jfree.chart.plot.*, 
org.jfree.chart.labels.*, 
org.jfree.chart.renderer.category.BarRenderer3D, 
java.awt.*, 
org.jfree.ui.*, 
org.jfree.chart.axis.AxisLocation"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
  <%@page import="myutils.ConnectionUtils"%><%
  Connection conn=ConnectionUtils.getConnection();
	 Statement stmt =conn.createStatement();
  String sql="select *from preorder";
 ResultSet rs=stmt.executeQuery(sql);
 int count=0;
   while(rs.next()){ count++;}  
   rs.close();
   stmt.close();
  conn.close(); 
  int j=0;
   String[] rowKeys = new String[count];
   String[] serid = new String[count];
    String[] havs = new String[count];
     String[] havv = new String[count];
     double[] Havs = new double[count];
      double[] Havv = new double[count];
       double[][] data = new double[count][1];
        Connection conn1=ConnectionUtils.getConnection();
	 Statement stmt1 =conn1.createStatement();
        String sql1="select *from preorder";
   ResultSet rs1=stmt1.executeQuery(sql1);
    while(rs1.next()){
    serid[j]=rs1.getString("ageId");
     havs[j]=rs1.getString("reaNumber");
     havv[j]=rs1.getString("preNumber");
    j++;}
     rs1.close();
      stmt1.close();
  conn1.close(); 
  for(int i=0;i<count;i++){
  rowKeys[i]="������"+serid[i];
  Havs[i]=Double.parseDouble(havs[i]);
   Havv[i]=Double.parseDouble(havv[i]);
  data[i][0]= Havs[i]/Havv[i];
  }
String[] columnKeys = {""}; 
CategoryDataset dataset = DatasetUtilities.createCategoryDataset(rowKeys, columnKeys, data); 
JFreeChart chart = ChartFactory.createBarChart3D("������Ԥ����ͳ��ͼ", 
"������", 
"Ԥ����", 
dataset, 
PlotOrientation.VERTICAL, 
true, 
false, 
false); 
CategoryPlot plot = chart.getCategoryPlot(); 
//�������񱳾���ɫ 
plot.setBackgroundPaint(Color.white); 
//��������������ɫ 
plot.setDomainGridlinePaint(Color.pink); 
//�������������ɫ 
plot.setRangeGridlinePaint(Color.pink); 
//��ʾÿ��������ֵ�����޸ĸ���ֵ���������� 
BarRenderer3D renderer = new BarRenderer3D(); 
renderer.setBaseItemLabelGenerator(new StandardCategoryItemLabelGenerator()); 
renderer.setBaseItemLabelsVisible(true); 
//Ĭ�ϵ�������ʾ�������У�ͨ����������ɵ������ֵ���ʾ 
//ע�⣺�˾�ܹؼ������޴˾䣬�����ֵ���ʾ�ᱻ���ǣ���������û����ʾ���������� 
renderer.setBasePositiveItemLabelPosition(new ItemLabelPosition(ItemLabelAnchor.OUTSIDE12, TextAnchor.BASELINE_LEFT)); 
renderer.setItemLabelAnchorOffset(10D); 
//����ÿ��������������ƽ������֮����� 
//renderer.setItemMargin(0.3); 
plot.setRenderer(renderer); 
//���õ�������������ʾλ�� 
//���·��ġ����ࡱ�ŵ��Ϸ� 
plot.setDomainAxisLocation(AxisLocation.TOP_OR_RIGHT); 
//��Ĭ�Ϸ�����ߵġ��������ŵ��ҷ� 
plot.setRangeAxisLocation(AxisLocation.BOTTOM_OR_RIGHT); 
String filename = ServletUtilities.saveChartAsPNG(chart, 700, 500, null, session); 
String graphURL = request.getContextPath() + "/DisplayChart?filename=" + filename; 
%> 
<img src="<%= graphURL %>" width=700 height=500 border=0 usemap="#<%= filename %>"> 
