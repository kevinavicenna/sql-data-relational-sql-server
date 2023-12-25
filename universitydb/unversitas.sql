CREATE TABLE ruang_kelas (
  id_ruang_kelas INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  nama_ruang VARCHAR(255) NULL,
  tanggal_peminjaman DATETIME NULL,
  tanggal_pengembalian DATETIME NULL
);

CREATE TABLE anggota_organisasi (
  id_organisasi INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  ruang_kelas_id_ruang_kelas INT NOT NULL,
  nama_lengkap VARCHAR(255) NULL,
  jurusan VARCHAR(255) NULL,
  FOREIGN KEY (ruang_kelas_id_ruang_kelas) REFERENCES ruang_kelas(id_ruang_kelas)
);

CREATE TABLE Mahasiswa (
  nim INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  nama_lengkap VARCHAR(255) NULL,
  ttl DATE NULL,
  jurusan VARCHAR(255) NULL,
  alamat VARCHAR(255) NULL
);

CREATE TABLE buku (
  id_buku INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  anggota_organisasi_id_organisasi INT NOT NULL,
  judul_buku VARCHAR(255) NULL,
  pengarang VARCHAR(255) NULL,
  tahun_terbit INT NULL,
  penerbit VARCHAR(255) NULL,
  FOREIGN KEY(anggota_organisasi_id_organisasi) REFERENCES anggota_organisasi(id_organisasi)
);

CREATE TABLE Mahasiswa_has_Organisasi (
  Mahasiswa_nim INT NOT NULL,
  anggota_organisasi_id_organisasi INT NOT NULL,
  PRIMARY KEY(Mahasiswa_nim, anggota_organisasi_id_organisasi),
  FOREIGN KEY(Mahasiswa_nim) REFERENCES Mahasiswa(nim),
  FOREIGN KEY(anggota_organisasi_id_organisasi) REFERENCES anggota_organisasi(id_organisasi)
);
