package challenge_javadb;

import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import com.mysql.cj.jdbc.Driver;

public class DriverTest {
    @Test
    void driverTest() throws SQLException{
        Driver driver = new Driver();
        DriverManager.registerDriver(driver);

    }
}
