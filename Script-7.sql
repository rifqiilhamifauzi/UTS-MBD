SELECT * FROM salam.mahasiswas;


INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('2000000001', 'Backend Dev Test', 22);

UPDATE salam.mahasiswas
SET nama = 'Backend Dev Updated'
WHERE nim = '2000000001';

DELETE FROM salam.mahasiswas
WHERE nim = '2000000001';

CREATE TABLE salam.test_backend (id SERIAL PRIMARY KEY);


