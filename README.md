# UTS Manajemen Basis Data
**Nama:** Rifqi Ilhami Fauzi  
**NIM:** 1237050121  
**Mata Kuliah:** Manajemen Basis Data  
**Dosen:** Wildan budiawan

---

##  Deskripsi Proyek
Proyek ini merupakan tugas UTS untuk membangun sistem basis data menggunakan **PostgreSQL** dan **PGAdmin4** di dalam container **Docker**.  
Tujuannya adalah untuk memahami konsep **Database Management**, **User Role**, serta **Database Access Control** menggunakan dockerized environment.

---

##  Service 1: PostgreSQL
- **Container Name:** `postgres_rifqi`  
- **Image Version:** `postgres:15`  
- **Port:** `22121`  
- **Username:** `postgres`  
- **Password:** (disimpan di file `.env`)  
- **Database:** `postgres`  
- **Schema:** `salam`  
- **Table:** `mahasiswas`  

### Struktur Tabel
| Kolom | Tipe Data | Keterangan |
|--------|------------|------------|
| id | SERIAL | Primary Key |
| nim | VARCHAR(15) | Unique |
| nama | VARCHAR(100) | Nama mahasiswa |
| umur | INT | Check umur > 16 |

---

##  Service 2: PGAdmin4
- **Container Name:** `pgadmin_rifqi`  
- **Image Version:** `dpage/pgadmin4`  
- **Port:** `44121`  
- **Email Login:** `admin@rifqi.com`  
- **Password:** disimpan di file `.env`  

Akses PGAdmin:  
 [http://localhost:44121](http://localhost:44121)

---

##  User dan Role
| User | Role / Hak Akses |
|------|------------------|
| `backend_dev` | CRUD semua tabel |
| `bi_dev` | Read-only (SELECT saja) |
| `data_engineer` | CREATE, MODIFY, DROP object, serta CRUD semua tabel |

---

##  Struktur Folder Proyek
