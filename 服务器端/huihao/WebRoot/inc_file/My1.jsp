<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page import="org.jfree.chart.ChartFactory, 
org.jfree.chart.JFreeChart, 
org.jfree.chart.plot.PlotOrientation, 
org.jfree.chart.servlet.ServletUtilities, 
org.jfree.data.category.DefaultCategoryDataset"%><% 
DefaultCategoryDataset dataset = new DefaultCategoryDataset(); 
dataset.addValue(410, "����", "����"); 
dataset.addValue(220, "����", "ţ��"); 
dataset.addValue(330, "����", "����"); 
dataset.addValue(340, "����", "����"); 
JFreeChart chart = ChartFactory.createBarChart3D("ҵ��Ա�ɹ���ͳ��ͼ", 
"ҵ��ԱID", 
"�ɹ���", 
dataset, 
PlotOrientation.VERTICAL, 
false, 
false, 
false); 
String filename = ServletUtilities.saveChartAsPNG(chart, 500, 300, null, session); 
String graphURL = request.getContextPath() + "/DisplayChart?filename=" + filename; 
%> 
<img src="<%= graphURL %>" width=500 height=300 border=0 usemap="#<%= filename %>"> 
