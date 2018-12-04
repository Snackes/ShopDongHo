package ModelDao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Vector;

public class DBConnection {
	public static String strConn = "jdbc:sqlserver://localhost:1433;databaseName=webBanDongHo;user=admin;password=12345";
	private Connection connection;

	public DBConnection() {
		super();
	}

	public void connect() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			connection = DriverManager.getConnection(strConn);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (connection.isClosed() == false) {
				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

										// THỰC THI CÁC QUERRY(PROC, FUNCTION)

	// Thực thi scalar function trả về khác bảng paramsIn(có cả vị trí và giá trị của 1 đối số)
	public Object executeScalarFunction(String name, Vector<Object[]> paramsIn, Vector<Object[]> paramsOut)
			throws SQLException {
		// Count number parameter
		int count = 0;
		if (paramsIn != null)
			count += paramsIn.size();

		String query = createQueryScalarFunction(name, count);// định hình khung cho câu truy vấn
		CallableStatement statement = connection.prepareCall(query);

		// Set up ParamsIn
		if (paramsIn != null && paramsIn.size() > 0)
			setUpParameterIn(statement, paramsIn);// nạp dữ liệu cho câu truy vấn(tức là thằng paramsIn nó bao gồm cả vị
													// trị và giá trị của từng đối số)

		// Set up ParamOut
		if (paramsOut != null && paramsOut.size() > 0)
			setUpParameterOut(statement, paramsOut);// nạp dữ liệu cho paramOut sẽ trả về

		// Set up Execute query
		statement.executeUpdate();// thực hiện

		return getResultOfScalarFunction(statement);
	}

	// Thực thi function trả về một bảng
	public ResultSet executeTableFunction(String name, Vector<Object[]> paramsIn) throws SQLException {
		String query = null;
		if (paramsIn == null)
			query = createQueryTableFunction(name, 0);
		else
			query = createQueryTableFunction(name, paramsIn.size());
		CallableStatement statement = connection.prepareCall(query);

		if (paramsIn != null && paramsIn.size() > 0) {
			setUpParameterIn(statement, paramsIn);
		}

		ResultSet result = statement.executeQuery();

		return result;
	}

	// Thực thi proc trả về giá trị
	public Object[] executeProcedure(String name, Vector<Object[]> paramsIn, Vector<Object[]> paramsOut,
			Vector<Object[]> paramsInOut) throws SQLException {
		// Count number parameter
		int count = 0;
		if (paramsIn != null)
			count += paramsIn.size();
		if (paramsOut != null)
			count += paramsOut.size();
		if (paramsInOut != null)
			count += paramsInOut.size();

		String query = createQueryProcedure(name, count);
		CallableStatement statement = connection.prepareCall(query);

		// Set up ParamsIn
		if (paramsIn != null && paramsIn.size() > 0)
			setUpParameterIn(statement, paramsIn);

		// Set up ParamsInOut
		if (paramsInOut != null && paramsInOut.size() > 0)
			setUpParameterInOut(statement, paramsInOut);

		// Set up ParamOut
		if (paramsOut != null && paramsOut.size() > 0)
			setUpParameterOut(statement, paramsOut);

		// Set up Execute query
		statement.executeUpdate();

		// Get result after execute
		Vector<Object> result = getResultOfProcedure(statement, paramsOut, paramsInOut);

		return result.toArray();
	}

	// Thực thi Proc trả về một bảng
	
	public ResultSet executeTableProc(String name, Vector<Object[]> paramsIn) throws SQLException {
		String query = null;
		if (paramsIn == null)
			query = createQueryTableProcedure(name, 0);// =0 nếu không có đối số truyền vào
		else
			query = createQueryTableProcedure(name, paramsIn.size());
		CallableStatement statement = connection.prepareCall(query);

		if (paramsIn != null && paramsIn.size() > 0) {
			setUpParameterIn(statement, paramsIn);
		}
		ResultSet result = statement.executeQuery();
		return result;
	}

				//ĐỊNH DẠNG VỀ VỊ TRÍ VÀ KIỂU DỮ LIỆU CHO TỪNG ĐỐI SỐ(CẢ TRUYỀN VÀO VÀ XUẤT RA)
	
	
	// Khởi tạo bảng giá trị cho ParamsIn(có cả vị trí và giá trị), ParamOut(có cả vị trí và giá trị)
	public Vector<Object[]> createParams(int[] index, Object[] value) {
		Vector<Object[]> result = new Vector<>();

		if (index != null && value != null && index.length == value.length) {
			for (int i = 0; i < index.length; i++) {
				Object[] objects = new Object[] { index[i], value[i] };
				result.add(objects);
			}
		} else
			return null; // Trả về Null nếu 2 đối số sai khác kích thước

		return result;
	}

	// Khởi tạo bảng giá trị cho ParamInOut
	public Vector<Object[]> createParams(int[] index, Object[] type, Object[] value) {
		Vector<Object[]> result = new Vector<>();

		if (index != null && value != null && type != null && index.length == value.length
				&& index.length == type.length) {
			for (int i = 0; i < index.length; i++) {
				Object[] objects = new Object[] { index[i], type[i], value[i] };
				result.add(objects);
			}
		} else
			return null; // Trả về Null nếu 3 đối số sai khác kích thước

		return result;
	}

								//ĐỊNH HÌNH KHUNG CHO CÂU TRUY VẤN

	// Khởi tạo câu truy vấn tới scalar function
	private String createQueryScalarFunction(String name, int countParamsIn) {
		StringBuffer sBuffer = new StringBuffer("{? = Call " + name + " (");
		for (int i = 0; i < countParamsIn; i++) {
			sBuffer.append("?,");
		}
		sBuffer.replace(sBuffer.length() - 1, sBuffer.length(), ")}");
		return sBuffer.toString();
	}

	// Khởi tạo câu truy vấn tới table function
	private String createQueryTableFunction(String name, int count) {
		StringBuffer sBuffer = new StringBuffer("Select * From " + name + "(");
		for (int i = 0; i < count; i++) {
			sBuffer.append("?,");
		}
		if (count > 0)
			sBuffer.replace(sBuffer.length() - 1, sBuffer.length(), ")");
		else
			sBuffer.append(")");
		return sBuffer.toString();
	}

	// Tạo câu truy vấn tới procedure
	private String createQueryProcedure(String name, int count) {
		StringBuffer sBuffer = new StringBuffer("{Call " + name + " (");
		for (int i = 0; i < count; i++) {
			sBuffer.append("?,");
		}
		sBuffer.replace(sBuffer.length() - 1, sBuffer.length(), ")}");
		return sBuffer.toString();
	}

	// Khởi tạo câu truy vấn tới proc trả về một table

	private String createQueryTableProcedure(String name, int count) {
		
		StringBuffer sBuffer = new StringBuffer("execute " + name +" ");
		for (int i = 0; i < count; i++) {
			sBuffer.append("?,");
		}
		sBuffer.delete(sBuffer.length() - 1, sBuffer.length());
		return sBuffer.toString();
	}

						//LẤY KẾT QUẢ TRẢ VỀ (RESULT) KHI THỰC THI SCALAR FUN VÀ PROC

	// Lấy kết quả trả về sau khi truy vấn tới scalar function
	private Object getResultOfScalarFunction(CallableStatement statement) throws SQLException {
		return statement.getObject(1);
	}

	// Lấy kết quả trả về sau khi truy vấn tới procedure
	private Vector<Object> getResultOfProcedure(CallableStatement statement, Vector<Object[]> paramsOut,
			Vector<Object[]> paramsInOut) throws SQLException {
		Vector<Object> result = new Vector<>();

		// Get index of params out
		int[] indexOut = getIndexParams(paramsOut);

		// Get index of params in out
		int[] indexInOut = getIndexParams(paramsInOut);

		// Set up index of result = Sort(index out + index in out)
		int[] index = setUpIndexResult(indexOut, indexInOut);

		for (int i = 0; i < index.length; i++) {
			result.addElement(statement.getObject(index[i]));
		}

		return result;
	}

	// Khởi tạo vị trí trả về của các phần tử trong truy vấn
	private int[] setUpIndexResult(int[] indexOut, int[] indexInOut) {
		int size = 0;
		if (indexOut != null)
			size += indexOut.length;
		if (indexInOut != null)
			size += indexInOut.length;

		int[] result = new int[size];
		int index = 0;

		// Add element to result
		if (indexOut != null) {
			for (Integer value : indexOut) {
				result[index] = value;
				index++;
			}
		}
		if (indexInOut != null) {
			for (Integer value : indexInOut) {
				result[index] = value;
				index++;
			}
		}

		// Sort and return result
		Arrays.sort(result);
		return result;
	}

	// Lấy vị trí của đối số trong câu truy vấn
	private int[] getIndexParams(Vector<Object[]> params) {
		if (params == null)
			return new int[0];
		int[] result = new int[params.size()];
		for (int i = 0; i < params.size(); i++) {
			result[i] = (int) params.elementAt(i)[0];
		}
		return result;
	}

	// Gán giá trị đối số cho câu truy vấn
	private void setUpParameterInOut(CallableStatement statement, Vector<Object[]> value) throws SQLException {
		//Value là một mảng có cấu trúc, [1]: vị trí trong câu truy vấn, [2]: kiểu dữ liệu trả về (Types), [3]: giá trị truyền vào

		if (value == null)
			return;
		for (int i = 0; i < value.size(); i++) {
			Object[] element = (Object[]) value.elementAt(i);
			statement.registerOutParameter((int) element[0], (int) element[1]);
			statement.setObject((int) element[0], element[2]);
		}
	}

						//NẠP DỮ LIỆU CHO CÂU TRUY VẤN (NẠP VỊ TRÍ VÀ KIỂU DỮ LIỆU CHO TỪNG ĐỐI SỐ)
	// Gán giá trị đối số cho câu truy vấn
	private void setUpParameterOut(CallableStatement statement, Vector<Object[]> value) throws SQLException {
			//Value là một mảng có cấu trúc, [1]: vị trí trong câu truy vấn, [2]: kiểu dữ liệu trả về (Types)

		if (value == null)
			return;
		for (int i = 0; i < value.size(); i++) {
			Object[] element = (Object[]) value.elementAt(i);
			statement.registerOutParameter((int) element[0], (int) element[1]);
		}
	}

	// Gán giá trị đối số cho câu truy vấn
	private void setUpParameterIn(CallableStatement statement, Vector<Object[]> value) throws SQLException {
		//Value là một mảng có cấu trúc, [1]: vị trí trong câu truy vấn, [2]: giá trị truyền vào

		if (value == null)
			return;
		for (int i = 0; i < value.size(); i++) {
			Object[] element = (Object[]) value.elementAt(i);
			statement.setObject((int) element[0], element[1]);
		}
	}
}
