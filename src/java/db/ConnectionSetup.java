package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mzv
 */
public class ConnectionSetup {

    public Statement stmnt;
    public ResultSet rs;

    public ConnectionSetup() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BuildYourDreamHome", "root", "root");
        stmnt = con.createStatement();
    }

    public int insertData(String str) throws SQLException {
        int no = stmnt.executeUpdate(str);
        return no;
    }

    public ResultSet selectData(String str) throws SQLException {
        rs = stmnt.executeQuery(str);
        return rs;
    }

}
