-- Data untuk tabel ruang_kelas
INSERT INTO ruang_kelas (nama_ruang, tanggal_peminjaman, tanggal_pengembalian) VALUES
('A101', '2023-01-05', '2023-01-07'),
('B203', '2023-02-10', '2023-02-15'),
('C305', '2023-03-20', '2023-03-25'),
('D102', '2023-04-12', '2023-04-18'),
('E201', '2023-05-22', '2023-05-28'),
('F405', '2023-06-08', '2023-06-15'),
('G302', '2023-07-12', '2023-07-18'),
('H201', '2023-08-20', '2023-08-25'),
('I103', '2023-09-22', '2023-09-28'),
('J101', '2023-10-25', '2023-11-01');

-- Data untuk tabel anggota_organisasi
INSERT INTO anggota_organisasi (ruang_kelas_id_ruang_kelas, nama_lengkap, jurusan) VALUES
(1, 'Budi Santoso', 'Teknik Informatika'),
(2, 'Ani Wijaya', 'Manajemen'),
(3, 'Joko Sutomo', 'Ekonomi'),
(4, 'Dewi Kusuma', 'Hukum'),
(5, 'Agus Setiawan', 'Kedokteran'),
(6, 'Rina Sari', 'Psikologi'),
(7, 'Andi Setiawan', 'Sosiologi'),
(8, 'Sinta Dewi', 'Sastra'),
(9, 'Eko Wijaya', 'Biologi'),
(10, 'Lina Rahayu', 'Fisika');

-- Data untuk tabel Mahasiswa
INSERT INTO Mahasiswa (nama_lengkap, ttl, jurusan, alamat) VALUES
('Budi Santoso', '1998-03-15', 'Teknik Informatika', 'Jalan Mawar No. 10, Jakarta'),
('Ani Wijaya', '1997-06-20', 'Manajemen', 'Jalan Kenanga No. 5, Bandung'),
('Joko Sutomo', '1999-09-05', 'Ekonomi', 'Jalan Rambutan No. 7, Surabaya'),
('Dewi Kusuma', '1996-12-10', 'Hukum', 'Jalan Melati No. 3, Medan'),
('Agus Setiawan', '1997-04-25', 'Kedokteran', 'Jalan Dahlia No. 12, Semarang'),
('Rina Sari', '1998-02-18', 'Psikologi', 'Jalan Anggrek No. 15, Yogyakarta'),
('Andi Setiawan', '1997-07-30', 'Sosiologi', 'Jalan Kenari No. 20, Surakarta'),
('Sinta Dewi', '1999-01-05', 'Sastra', 'Jalan Mawar Merah No. 8, Malang'),
('Eko Wijaya', '1996-11-12', 'Biologi', 'Jalan Kenanga Hijau No. 25, Padang'),
('Lina Rahayu', '1998-08-28', 'Fisika', 'Jalan Dahlia Biru No. 30, Palembang');


-- Data untuk tabel buku
INSERT INTO buku (anggota_organisasi_id_organisasi, judul_buku, pengarang, tahun_terbit, penerbit) VALUES
(1, 'Pemrograman Python', 'John Doe', 2022, 'TechPublish'),
(2, 'Manajemen Bisnis Modern', 'Jane Smith', 2021, 'BusinessBooks'),
(3, 'Ekonomi Mikro', 'Adam Johnson', 2023, 'EcoPrint'),
(4, 'Dasar Hukum Negara', 'Emily Brown', 2020, 'LawPress'),
(5, 'Kedokteran Modern', 'Michael Wilson', 2022, 'MediBooks'),
(6, 'Psikologi Dasar', 'Maria Garcia', 2021, 'PsychoPrint'),
(7, 'Sosiologi Kontemporer', 'David Clark', 2020, 'SocioBooks'),
(8, 'Sastra Indonesia', 'Rina Kartika', 2023, 'LiteraPub'),
(9, 'Biologi Sel', 'Kevin Miller', 2022, 'BioPrint'),
(10, 'Fisika Modern', 'Andrew Thompson', 2021, 'PhysiBooks');

-- Data untuk tabel Mahasiswa_has_Organisasi
INSERT INTO Mahasiswa_has_Organisasi (Mahasiswa_nim, anggota_organisasi_id_organisasi) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
