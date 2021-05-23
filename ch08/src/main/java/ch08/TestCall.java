package ch08;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Types;

import javax.naming.*;
import javax.sql.*;

public class TestCall {
	private int empno;
	public int getEmpno() {
		return empno;
	}
	public void setEmpno(int empno) {
		this.empno = empno;
	}
	public String call() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
		String sql = "{?=call employee_ename(?)}";
		Connection conn = ds.getConnection();
		CallableStatement cs = conn.prepareCall(sql);
		cs.registerOutParameter(1, Types.VARCHAR);
		cs.setInt(2, empno);
		cs.execute();
		String result = cs.getString(1);
		cs.close();
		conn.close();
		return result;
	}
}
