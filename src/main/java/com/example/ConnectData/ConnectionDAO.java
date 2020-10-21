package com.example.ConnectData;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.example.model.Job;
import com.example.model.Menu;
import com.example.model.Revenue;

public class ConnectionDAO {
	
	public static ArrayList<Menu> getMenuByIdUser(int idUser){
		ArrayList<Menu> arr = new ArrayList<Menu>();
		String sql = "SELECT M.Name_Menu,M.URL_Menu FROM  MENU M,USERS_MENU UM "
				+ 		"WHERE UM.Id = '"+idUser+"' AND UM.Position = M.Position";
		
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

		while(rs.next()) {
			Menu mn = new Menu();
			mn.setNamme(rs.getString(1));
			mn.setUrl(rs.getString(2));
			arr.add(mn);
		}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arr;
	}
	
	//Create New Job
	public static void insertNewJob(int idLeader, String title,String des,
			String img,String timeCreate,String timeComplete,String status) {
		String sql ="INSERT INTO JOB VALUES('"
						+idLeader+"'," 
						+"'" +title+"',"
						+"'" +des+"',"
						+"'" +img+"',"
						+"'" +timeCreate+"',"
						+"'" +timeComplete+"',"
						+"'"+status+"')";
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//Them 4 nhan vien vao job
	public static void InsertPhase(int id,int idUser,int phase,
			String flag,String jobFinished) {
		String sql ="INSERT INTO JOB_DETAIL(Id,Id_User,phase,Flag,Job_Finished) VALUES("
				+"'"+id+"', "
				+"'" +idUser+ "', " 
				+"'" + phase + "', "
				+"'"+ flag +"', "
				+"'"+ jobFinished+"')";
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			/* stmt.executeQuery(sql_JOB); */
			 stmt.executeUpdate(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static int getIdJob(String des) {
		int idResult =0;
		String sql ="SELECT J.Id FROM JOB J "
				+"WHERE J.Job_Description = '"+des+"' "
				+"AND J.Status_Job ='New'";
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				idResult = rs.getInt(1);
				System.out.println(idResult);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return idResult;
	}
	
	//lay ID cua user theo name va password
	public static String getIdByUser(String name, String pass) {

		String str = "";
		String sql = "Select * from USERS WHERE USERS.Account = '" + name + "'" + " AND USERS.Pass = '" + pass + "'";

		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				str = rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(str);
		return str;
	}
	
	//Lay Danh Sach Job 
	public static ArrayList<Job> getMyjob(int idUser) {
		ArrayList<Job> arr = new ArrayList<Job>();
		String sql = "SELECT J.Id,J.Id_Leader,J.Title,J.Job_Description,J.Img,J.Time_Create,J.Time_End,J.Status_Job "
				+ "FROM JOB J,JOB_DETAIL JDT "
				+ "WHERE JDT.Id_User = '"+idUser+"' "
				+ "AND JDT.Flag = 'y' "
				+ "AND J.Id = JDT.Id";
	
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				Job job = new Job();
				
				job.setId(rs.getInt("Id"));
				job.setIdLeader(rs.getInt("Id_Leader"));
				job.setTitle(rs.getString("Title"));
				job.setDes(rs.getString("Job_Description"));
				job.setImg(rs.getString("Img"));
				job.setTimeCreate(rs.getString("Time_Create"));
				job.setTimeEnd(rs.getString("Time_End"));
				job.setStatus(rs.getString("Status_Job"));
				arr.add(job);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return arr;
	}
	
	//Lay Phase Cua User
	public static int getPhaseDetailById(int idUser,int idJob) {
		int phase = 0;
		String sql ="SELECT J.phase FROM JOB_DETAIL J "
					+ "WHERE J.Id_User = '"+idUser+"' "
					+"AND J.Id ='"+idJob+"'";
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				 phase = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return phase;
	}
	
	//Update Co cua User Ke Tiep
	public static void updateFlagNext(int idJob,int phaseBelow) {
		
		if(phaseBelow<4) {
			String sql ="UPDATE JOB_DETAIL SET flag = 'y' "
					+ "WHERE phase= '"+(phaseBelow+1)+"' AND "
					+ "Id= '"+idJob+"';";
		
			try {
				Connection conn = MyConnection.TestConnect();
				Statement stmt = (Statement) conn.createStatement();
				 stmt.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	//Update Co Cua User Khi Hoan Thanh Job
	public static void updateFlag(int idJob,int idUser) {
		String sql ="UPDATE JOB_DETAIL "
				+ "SET flag = 'n' ,Job_Finished='y', "
				+ "Time_Complete = '"+java.time.LocalDate.now().toString()+"' "
				+ "WHERE Id_User= '"+idUser+"' AND "
				+ "Id= '"+idJob+"';";
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			 stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static void updateStatus(int idJob,int phase) {
		String sql = "";
		if(phase>=1 && phase<4) {
			sql = "UPDATE JOB "
						+"SET Status_Job = 'IN PROGRESS' "
						+"WHERE Id = "+idJob;
		}else {
			sql = "UPDATE JOB "
					+"SET Status_Job = 'COMPLETE' "
					+"WHERE Id = "+idJob;
		}
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			 stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//Dem Job Hoan Thanh Va Hien Thi
	public static Revenue revenueJob(int idUser,String dayStart , String dayEnd) {
		int myResult = 0;
		Revenue revenue = new Revenue();
		String sql1="SElECT COUNT(Job_Finished) AS result "
						+"FROM JOB_DETAIL " 
							+"WHERE Job_Finished ='y' AND Id_User = '"+idUser+"' "
								+"AND Time_Complete>='"+dayStart+"' "
								+"AND Time_Complete<= '"+dayEnd+"'";
		String sql2="";
		String sql3 = "SELECT * FROM REVENUE_JOB WHERE Id_User="+idUser;
		try {
			Connection conn = MyConnection.TestConnect();
			Statement stmt = (Statement) conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql1);
			while(rs.next()) {
				myResult = Integer.parseInt(rs.getString("result"));
			}
			
			 sql2 = "INSERT INTO REVENUE_JOB VALUES('"+idUser+"','"+dayStart+"','"+dayEnd+"',"+myResult+")";
			 stmt.executeUpdate(sql2);
			 
			 rs = stmt.executeQuery(sql3);
			 while(rs.next()) {
				 revenue.setIdUser(idUser);
				 revenue.setDayStart(dayStart);
				 revenue.setDayEnd(dayEnd);
				 revenue.setPoint(rs.getInt("Point"));
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(revenue.getPoint());
		return revenue;
	}
}
