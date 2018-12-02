package ModelService;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import ModelBean.SanPham;
import ModelDao.DBConnection;
public class XuLiSanPham {	

	DBConnection connection=new DBConnection();
	public XuLiSanPham() {
		connection = new DBConnection();
	}
	public ResultSet listSP()
	{
		connection.connect();
		ResultSet test=null;
		try {
			test= connection.executeTableProc("LayThongTinSanPham2", null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
	}
	
	public SanPham[] listSP1() {
		Vector<SanPham> result = new Vector<>();
		connection.connect();
		
		try {
			ResultSet resultSet = connection.executeTableProc("LayThongTinSanPham2", null);
			while (resultSet.next()) {
				SanPham sp = new SanPham();				
				//Add value to Book
				sp.setMaSP(resultSet.getInt(1));
				sp.setTenSp(resultSet.getString(2));
				sp.setGiaBan(resultSet.getDouble(3));
				result.addElement(sp);
				
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			connection.close();
		}
		return result.toArray(new SanPham[0]);
	}

}