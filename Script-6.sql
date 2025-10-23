-- Buat schema bernama SALAM
CREATE SCHEMA salam AUTHORIZATION postgres;

-- Buat tabel di dalam schema SALAM
CREATE TABLE salam.mahasiswas (
    id SERIAL PRIMARY KEY,
    nim VARCHAR(15) UNIQUE,
    nama VARCHAR(100) NOT NULL,
    umur INT CHECK (umur > 16)
);



select * from mahasiswas;


INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('1237050121', 'Nama Duplikat', 22);


INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('1237050121', 'Nama Duplikat', 22);


INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('9999999999', 'Anak Kecil', 10);

CREATE USER backend_dev WITH PASSWORD 'ifunggul';
GRANT CONNECT ON DATABASE postgres TO backend_dev;
GRANT USAGE ON SCHEMA salam TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA salam TO backend_dev;

ALTER DEFAULT PRIVILEGES IN SCHEMA salam
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO backend_dev;

CREATE USER bi_dev WITH PASSWORD 'ifunggul';
GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA salam TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA salam TO bi_dev;

ALTER DEFAULT PRIVILEGES IN SCHEMA salam
  GRANT SELECT ON TABLES TO bi_dev;

CREATE USER data_engineer WITH PASSWORD 'ifunggul';
GRANT CONNECT ON DATABASE postgres TO data_engineer;
GRANT USAGE, CREATE ON SCHEMA salam TO data_engineer;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA salam TO data_engineer;

ALTER DEFAULT PRIVILEGES IN SCHEMA salam
  GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO data_engineer;





SELECT * FROM salam.mahasiswas;

INSERT INTO salam.mahasiswas (nim, nama, umur)
VALUES ('2000000001', 'Backend Dev Test', 22);

UPDATE salam.mahasiswas
SET nama = 'Backend Dev Updated'
WHERE nim = '2000000001';


DELETE FROM salam.mahasiswas
WHERE nim = '2000000001';

CREATE TABLE salam.test_backend (id SERIAL PRIMARY KEY);


GRANT USAGE, SELECT, UPDATE ON SEQUENCE salam.mahasiswas_id_seq TO backend_dev, bi_dev, data_engineer;


