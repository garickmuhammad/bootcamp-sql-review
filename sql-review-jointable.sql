--JOIN TABLE
CREATE TABLE pelanggan_detail(
  id_pelanggan int,
  id_detail int,
  pendidikan varchar(50),
  universitas varchar(50),
  pekerjaan varchar(50)
);

INSERT INTO pelanggan_detail VALUES (1, 1, 'S1', 'Itenas', 'Staff IT');
INSERT INTO pelanggan_detail VALUES (1, 2, 'S2', 'ITB', 'SPV IT');
INSERT INTO pelanggan_detail VALUES (2, 1, 'S1', 'UI', 'Data Scientist');


SELECT t1.id_pelanggan, t1.nama, t1.kota, t2.pendidikan, t2.pekerjaan FROM pelanggan t1 INNER JOIN pelanggan_detail t2
  ON t1.id_pelanggan = t2.id_pelanggan;

SELECT t1.id_pelanggan, t1.nama, t1.kota, t2.pendidikan, t2.pekerjaan FROM pelanggan as t1 LEFT JOIN pelanggan_detail as t2
  ON t1.id_pelanggan = t2.id_pelanggan;