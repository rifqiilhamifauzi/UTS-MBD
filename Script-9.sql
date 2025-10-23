SELECT * FROM salam.mahasiswas;

INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('2000000003', 'Data Engineer Test', 25);

UPDATE salam.mahasiswas
SET nama = 'Data Engineer Updated'
WHERE nim = '2000000003';

DELETE FROM salam.mahasiswas
WHERE nim = '2000000003';

CREATE TABLE salam.test_de (
  id SERIAL PRIMARY KEY,
  catatan TEXT
);

DROP TABLE salam.test_de;