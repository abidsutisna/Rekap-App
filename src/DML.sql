insert into menu (kode_produk, nama_produk, harga)
	values ('01-001', 'Nasi Putih', 5000);

insert into menu (kode_produk, nama_produk, harga)
	values ('01-002', 'Aneka tumisan', 2000);

insert into menu (kode_produk, nama_produk, harga)
	values ('02-001', 'es teh tawar', 1000);
    
insert into menu (kode_produk, nama_produk, harga)
	values ('01-007', 'Aneka sop', 7000);
    
insert into menu (kode_produk, nama_produk, harga)
	values ('01-003', 'Aneka gorengan', 1500);

insert into menu (kode_produk, nama_produk, harga)
	values ('01-004', 'Nasi goreng biasa', 16000);

insert into menu (kode_produk, nama_produk, harga)
	values ('01-006', 'Mie goreng biasa', 17000);

insert into menu (kode_produk, nama_produk, harga)
	values ('01-005', 'Nasi goreng spesial', 19000);

insert into menu (kode_produk, nama_produk, harga)
	values ('04-001', 'Telor dadar', 5000);
    
insert into menu (kode_produk, nama_produk, harga)
	values ('01-008', 'Ikan Guranme Bakar', 55000);
    
insert into menu (kode_produk, nama_produk, harga)
	values ('02-002', 'Juice Strawberry', 23000);

insert into menu (kode_produk, nama_produk, harga)
	values ('04-002', 'Sambal Mangga', 7000);
    
insert into menu (kode_produk, nama_produk, harga)
	values ('02-003', 'Juice Mangga', 20000);

insert into tipe_transaksi(tipe_transaksi)
	values ('Eat in');
    
insert into tipe_transaksi(tipe_transaksi)
	values ('Take Away');

insert into tipe_transaksi(tipe_transaksi)
	values ('Online');

insert into cabang(kode_cabang, nama_cabang)
	values ('0203', 'Pancoran Barat');

insert into cabang(kode_cabang, nama_cabang)
	values ('0204', 'Kuningan Tengah');
    
insert into cabang(kode_cabang, nama_cabang)
	values ('0205', 'Pasar Minggu');

insert into cabang(kode_cabang, nama_cabang)
	values ('0206', 'Cilandak');

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 1,'01-001', 1, 5000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 1,'01-002', 1, 2000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 1,'02-001', 1, 1000);

insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0001',1);
    
insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0001',3);
 
 insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0001',4);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 2,'01-001', 1, 5000);
 
 insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 2,'01-007', 1, 7000);

 insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0203', 2,'01-003', 3, 4500);

 insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0002',5);

 insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0002',6);
    
  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0203-2023-0002',7);   
    
 insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0204', 3,'01-004', 1, 16000);

  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-04','0203-2023-0012',8);  
    
 insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0204', 2,'01-006', 1, 17000);

  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-05','0203-2023-0013',9);  

 insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0204', 1,'01-005', 1, 19000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0204', 1,'04-001', 1, 5000);

  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-05','0203-2023-0014',10);  

  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-05','0203-2023-0014',11);  

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0205', 3,'01-008', 1, 55000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0205', 3,'02-002', 1, 23000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0205', 3,'01-001', 3, 15000);

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0205', 3,'04-002', 2, 14000);

  insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0205-2023-1000',12);  

insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0205-2023-1000',13);  

insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0205-2023-1000',14);  

insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-03','0205-2023-1000',15);  

insert into penjualan
	(kode_cabang,id_tipeTransaksi,  kode_produk, jumlah, total_penjualan)
    values ('0206', 2,'02-003', 4, 80000);

insert into bill
	(tanggal_transaksi,no_struk,  id_penjualan)
    values ('2023-01-06','0206-2023-0923',16);  

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

select sum(total_penjualan)
	from penjualan
	where id_tipeTransaksi = 1;



