package myutils;
import java.sql.*;

public class ConnectionUtils {
	
	public static Connection getConnection(){
		Connection con = null;
		
		try {
			//ע�����ݿ�����
			Class.forName("com.mysql.jdbc.Driver");
			//���ݿ��λ���ַ���
			String url = "jdbc:mySql://127.0.0.1:3306/huihao";
			//���ݿ��û���
			String user = "root";
			//���ݿ�����
			String password = "123456";
			//�õ����ݿ�����
			con = DriverManager.getConnection(url,user,password);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			con = null;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			con = null;
		}
		
		return con;
	}

}
