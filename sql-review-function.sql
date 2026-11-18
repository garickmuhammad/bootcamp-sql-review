--String Function
SELECT *, UPPER(nama) as "Nama Besar" FROM pelanggan;

SELECT *, CONCAT(nama, ' - ', kota) as 'Concat Name' FROM pelanggan;


-- Group BY dan ORDER BY
SELECT kota FROM pelanggan GROUP BY kota ORDER BY kota DESC



--Aggregat Function
ELECT * FROM pesanan;

SELECT kategori, COUNT(Nilai), AVG(Nilai) FROM pesanan WHERE kategori = 'Elektronik';

SELECT kategori, MAX(nilai) FROM pesanan GROUP BY kategori;








