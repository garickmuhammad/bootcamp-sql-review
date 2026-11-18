CREATE TABLE pelanggan (
    id_pelanggan INTEGER PRIMARY KEY AUTOINCREMENT,
    nama TEXT,
    kota TEXT
);

CREATE TABLE pesanan (
    id_pesanan INTEGER PRIMARY KEY AUTOINCREMENT,
    id_pelanggan INTEGER REFERENCES pelanggan(id_pelanggan),
    kategori TEXT,
    nilai INTEGER
);

INSERT INTO pelanggan (nama, kota) VALUES
('Raka', 'Bandung'),
('Nadia', 'Jakarta'),
('Bima', 'Bandung'),
('Sari', 'Surabaya');

INSERT INTO pesanan (id_pelanggan, kategori, nilai) VALUES
(1, 'Elektronik', 1500000),
(1, 'Aksesoris', 250000),
(2, 'Elektronik', 3200000),
(3, 'Pakaian', 450000),
(3, 'Elektronik', 1200000);



-- 1. INSERT: memasukan 1 nilai baru pada pelanggan yang sudah ada
INSERT INTO pesanan (id_pelanggan, kategori, nilai) VALUES (1, 'Permainan', 2500000);
INSERT INTO pesanan (id_pelanggan, kategori, nilai) VALUES (4, 'Elektronik', 3500000);

-- 2. UPDATE = menaikan nilai spesifik dari suatu nilai dari pelanggan yang ada
SELECT * FROM pesanan WHERE kategori = 'Elektronik' AND nilai < 3000000;

UPDATE pesanan
SET nilai = nilai * 1.10
WHERE id_pelanggan = 1 AND kategori = 'Elektronik';

-- 3. DELETE = menghilangkan nilai spesifik dari tabel sesuai dengan ketentuan yang ditentukan

DELETE FROM pesanan WHERE id_pelanggan = 1 AND nilai < 2000000;

SELECT * FROM pelanggan;
SELECT * FROM pesanan;


SELECT DISTINCT kota FROM pelanggan;
INSERT INTO pelanggan VALUES (5, 'Arif', 'Jakarta');
INSERT INTO pelanggan VALUES (6, 'Natalie', 'Bogor');
INSERT INTO pelanggan VALUES (7, 'Garick', 'Bogor');

SELECT * FROM pelanggan WHERE kota = 'Bogor'
