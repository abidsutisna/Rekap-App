package challenge_javadb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import de.vandermeer.asciitable.AsciiTable;
import de.vandermeer.skb.interfaces.transformers.textformat.TextAlignment;

public class RekapApp {
    public static void main( String[] args ) throws SQLException {
        TableData.getTableData();
        TableData.getRekapTotalPenjualan();
    }
}
