package challenge_javadb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import de.vandermeer.asciitable.AsciiTable;
import de.vandermeer.skb.interfaces.transformers.textformat.TextAlignment;

public class TableData {
    static void getTableData() throws SQLException {
        
       try (Connection connection = ConnectionUtil.getDataSource().getConnection();) {
            Statement statement = connection.createStatement();

            String query = """
                select b.tanggal_transaksi as Tanggal, 
                b.no_struk as Bill,
                c.kode_cabang as 'Branch Name',
                tp.tipe_transaksi as 'Type',
                p.kode_produk as 'Product Code',
                m.nama_produk as 'Product Name',
                p.jumlah as 'Qty',
                m.harga as price,
                p.total_penjualan as Total
                from (((bill as b 
                inner join penjualan as p
                    on b.id_penjualan = p.id_penjualan)
                    inner join cabang as c
                    on p.kode_cabang = c.kode_cabang)
                    inner join tipe_transaksi as tp
                    on p.id_tipeTransaksi = tp.id_tipeTransaksi)
                    inner join menu as m
                    on p.kode_produk = m.kode_produk;
                    """;
                    
                    
            ResultSet resultSet = statement.executeQuery(query);
            AsciiTable asciiTable = new AsciiTable();
            
            // Menampilkan header kolom
            int columnCount = resultSet.getMetaData().getColumnCount();
            List<String> row = new ArrayList<>();
            asciiTable.addRule();
            for (int i = 1; i <= columnCount; i++) {
                row.add(resultSet.getMetaData().getColumnName(i));
            }
            
            asciiTable.addRow(row);

            asciiTable.addRule();

            // Menampilkan data tabel
            while (resultSet.next()) {
                List<String> data = new ArrayList<>();
                for (int i = 1; i <= columnCount; i++) {
                    data.add(resultSet.getString(i));
                }
                asciiTable.addRow(data);
                asciiTable.addRule();
            }

            asciiTable.setTextAlignment(TextAlignment.CENTER);
            String render = asciiTable.render();
            
            System.out.println(render);
       } catch(SQLException e){
            e.printStackTrace();
       }
    }

    static void getRekapTotalPenjualan(){
        try (Connection connection = ConnectionUtil.getDataSource().getConnection();) {
            Statement statement2 = connection.createStatement();

            String queryEatIn = """
                select sum(total_penjualan)
                from penjualan
                where id_tipeTransaksi = 1;
                    """;
            
            ResultSet resultSetEatIn = statement2.executeQuery(queryEatIn);
            while (resultSetEatIn.next()) {
                System.out.println("Eat In   "+ "\t" + ":" + resultSetEatIn.getInt("sum(total_penjualan)"));
            }

            Statement statement3 = connection.createStatement();

            String queryTakeAway = """
                select sum(total_penjualan)
                from penjualan
                where id_tipeTransaksi = 2;
                    """;
            
            ResultSet resultTakeAway = statement3.executeQuery(queryTakeAway);
            while (resultTakeAway.next()) {
                System.out.println("Take Away   "+ "\t" +  ":" + resultTakeAway.getInt("sum(total_penjualan)"));
            }

            Statement statement4 = connection.createStatement();

            String queryOnline = """
                select sum(total_penjualan)
                from penjualan
                where id_tipeTransaksi = 3;
                    """;
            
            ResultSet resultOnline = statement4.executeQuery(queryOnline);
            while (resultOnline.next()) {
                System.out.println("Online   "+ "\t" +  ":" + resultOnline.getInt("sum(total_penjualan)"));
            }

            

            resultSetEatIn.close();
            resultTakeAway.close();
            resultOnline.close();
            statement2.close();
            statement3.close();
            statement4.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
