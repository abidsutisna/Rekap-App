package challenge_javadb;

import static org.junit.jupiter.api.Assertions.fail;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import com.zaxxer.hikari.HikariDataSource;

public class ConnectionTest {
    @Test
    void connectionPoolTest() {

        try{
            HikariDataSource dataSources = ConnectionUtil.getDataSource();
            Connection connection = dataSources.getConnection();

            connection.close();
            dataSources.close();
        }catch(SQLException sqlException){
            fail(sqlException.getMessage());
        }
    }
}
