create database WMS_db;

create table menu(
	kode_produk varchar(11) not null,
    nama_produk varchar(11) not null,
    harga int(11) not null,
    check (harga >= 0),
    primary key (kode_produk),
    unique(kode_produk)
);
    
create table tipe_transaksi(
	id_tipeTransaksi int(11) not null auto_increment,
    tipe_transaksi varchar(11) not null,
    primary key (id_tipeTransaksi),
    unique(tipe_transaksi)
);
    
create table cabang(
	kode_cabang varchar(20) not null ,
    nama_cabang varchar(100) not null,
    primary key (kode_cabang),
	unique(kode_cabang)
);

create table penjualan(
	id_penjualan int(11) not null auto_increment,
    kode_cabang varchar(20) not null,
    id_tipeTransaksi int(11) not null,
    kode_produk varchar(11) not null,
    jumlah int(11) not null,
    total_penjualan int(11) not null,
    primary key (id_penjualan),
    foreign key (kode_cabang) references cabang(kode_cabang),
	foreign key (id_tipeTransaksi) references tipe_transaksi(id_tipeTransaksi),
    foreign key (kode_produk) references menu(kode_produk),
	check (jumlah >= 0),
    check (total_penjualan >= 0)
);

create table bill(
	id_bill int(11) not null auto_increment,
    tanggal_transaksi date not null,
    no_struk varchar(50) not null,
    id_penjualan int(11) not null,
    primary key (id_bill),
    foreign key (id_penjualan) references penjualan(id_penjualan)
);