# 🏛️ SI-DESA (Sistem Informasi Desa)

<p align="center">
  <img src="https://img.shields.io/badge/Laravel-11-red?style=for-the-badge&logo=laravel" alt="Laravel 11">
  <img src="https://img.shields.io/badge/PHP-8.2-blue?style=for-the-badge&logo=php" alt="PHP 8.2">
  <img src="https://img.shields.io/badge/AdminLTE-3-green?style=for-the-badge" alt="AdminLTE">
  <img src="https://img.shields.io/badge/MySQL-Database-orange?style=for-the-badge&logo=mysql" alt="MySQL">
</p>

## 📖 Tentang SI-DESA

SI-DESA adalah sistem informasi manajemen desa yang komprehensif yang memungkinkan pengelolaan data desa secara digital. Sistem ini menggabungkan portal informasi publik dengan sistem pelayanan administrasi untuk meningkatkan transparansi dan efisiensi pelayanan desa.

## 🚀 Instalasi dan Setup

### Prerequisites

-   PHP 8.2 atau lebih tinggi
-   Composer
-   Node.js & NPM
-   MySQL/MariaDB
-   Web Server (Apache/Nginx)

### Langkah Instalasi

1. **Clone Repository**

    ```bash
    git clone https://github.com/IrdanGu/si-desa.git
    cd si-desa
    ```

2. **Install Dependencies**

    ```bash
    composer install
    npm install
    ```

3. **Environment Setup**

    ```bash
    cp .env.example .env
    php artisan key:generate
    ```

4. **Database Configuration**
   Edit file `.env` dan sesuaikan konfigurasi database:

    ```env
    DB_CONNECTION=mysql
    DB_HOST=127.0.0.1
    DB_PORT=3306
    DB_DATABASE=si_desa
    DB_USERNAME=root
    DB_PASSWORD=
    ```

5. **Database Migration & Seeding**

    ```bash
    php artisan migrate
    # Import sample data dari db_sidesa_1.sql (opsional)
    ```

6. **Storage Link**

    ```bash
    php artisan storage:link
    ```

7. **Build Assets**

    ```bash
    npm run build
    # atau untuk development: npm run dev
    ```

8. **Run Server**
    ```bash
    php artisan serve
    ```

## 🔐 Akses Admin Panel

### URL Admin Panel

-   **URL**: `http://localhost:8000/login`
-   **Dashboard Admin**: `http://localhost:8000/dashboard`

### Kredensial Default

#### Admin Utama

-   **Email**: `admin@gmail.com`
-   **Password**: `admin123`
-   **Role**: Admin

#### Admin Alternatif

-   **Email**: `agungrizki640@gmail.com`
-   **Password**: `password` (hashed - lihat di database)
-   **Role**: Admin

#### Karang Taruna

-   **Email**: `rizko123@gmail.com`
-   **Password**: `password` (hashed - lihat di database)
-   **Role**: Karang Taruna

### Catatan Keamanan

⚠️ **PENTING**: Segera ganti password default setelah instalasi untuk keamanan sistem!

## ✨ Fitur Utama

### 🔧 Area Admin (Backend)

#### Dashboard Analytics

-   Statistik penduduk real-time (jumlah KK, laki-laki, perempuan)
-   Grafik demografis (pendidikan, pekerjaan, status perkawinan)
-   Monitor surat masuk dengan notifikasi
-   Data visualization dengan Chart.js

#### Manajemen Data Penduduk

-   **CRUD Lengkap**: Tambah, edit, hapus, dan lihat data penduduk
-   **Import/Export Excel**: Maatwebsite Excel integration
-   **Pencarian & Filter**: Berdasarkan NIK, nama, RT, dll
-   **Auto-fill Form**: Data otomatis terisi berdasarkan NIK

#### Pelayanan Surat Digital

-   **Surat Keterangan Tidak Mampu (SKTM)**
-   **Surat Keterangan Usaha**
-   **Surat Keterangan Domisili**
-   **Workflow**: Submit → Review → Approve/Reject → Print PDF
-   **Upload Dokumen**: Support multiple file formats
-   **Email Notification**: Auto-notify admin untuk surat masuk

#### Content Management

-   **Berita Desa**: Rich text editor dengan gambar
-   **Agenda Kegiatan**: Desa dan Karang Taruna
-   **Galeri Foto**: Upload dan manajemen foto kegiatan
-   **Potensi Desa**: Showcase sumber daya dan ekonomi lokal

### 🌐 Area Publik (Frontend)

#### Portal Informasi

-   **Homepage**: Sambutan kepala desa, berita terbaru, agenda
-   **Profil Desa**: Visi-misi, struktur organisasi, potensi desa
-   **Berita & Pengumuman**: List dan detail berita
-   **Galeri**: Dokumentasi foto kegiatan desa

#### Layanan Online

-   **Form Pengajuan Surat**: Interface user-friendly
-   **Auto-fill Data**: Berdasarkan NIK penduduk
-   **Upload Dokumen**: Syarat pendukung surat
-   **Captcha Security**: Proteksi spam dan bot
-   **Status Tracking**: Cek status pengajuan surat

#### Infografis & Statistik

-   **Demografis per RT**: Breakdown data penduduk
-   **Chart Pendidikan**: Visualisasi tingkat pendidikan
-   **Data Pekerjaan**: Statistik mata pencaharian
-   **Status Perkawinan**: Analisis demografi sosial

## 📱 Cara Penggunaan

### Untuk Administrator

1. **Login ke Admin Panel**

    - Akses `http://localhost:8000/login`
    - Masukkan kredensial admin
    - Redirect ke dashboard

2. **Manajemen Data Penduduk**

    ```
    Dashboard → Penduduk → Tambah/Edit Data
    - Input data manual atau import Excel
    - Gunakan fitur pencarian untuk data besar
    - Export data untuk laporan
    ```

3. **Proses Surat Masuk**

    ```
    Dashboard → [Jenis Surat] → Review Pengajuan
    - Cek kelengkapan dokumen
    - Approve atau reject dengan keterangan
    - Print surat yang telah disetujui
    ```

4. **Update Konten Website**
    ```
    - Berita: Dashboard → Berita → Tambah Berita
    - Agenda: Dashboard → Agenda → Input Kegiatan
    - Galeri: Dashboard → Galeri → Upload Foto
    ```

### Untuk Masyarakat

1. **Akses Informasi Desa**

    - Homepage: Informasi umum dan berita terbaru
    - Menu Profil: Visi-misi, struktur organisasi
    - Galeri: Foto-foto kegiatan desa
    - Infografis: Data statistik penduduk

2. **Pengajuan Surat Online**

    ```
    Homepage → Menu Layanan → Pilih Jenis Surat
    1. Isi NIK (data akan auto-fill)
    2. Lengkapi informasi tambahan
    3. Upload dokumen pendukung
    4. Submit pengajuan
    5. Tunggu email konfirmasi
    ```

3. **Cek Status Pengajuan**
    - Melalui email notification
    - Contact admin untuk update status

## 🔄 Workflow Sistem

### Proses Pengajuan Surat

```
Masyarakat → Submit Form → Admin Review → Approve/Reject → Email Notification → Print PDF
```

### Manajemen Konten

```
Admin → Create/Edit Content → Publish → Display di Frontend
```

### Data Penduduk

```
Import Excel → Validasi → Store Database → Display di Dashboard → Export Report
```

## 🛠️ Teknologi & Dependencies

### Backend

-   **Laravel 11**: Framework PHP modern
-   **MySQL**: Database management
-   **Eloquent ORM**: Database abstraction
-   **Laravel UI**: Authentication scaffolding

### Frontend

-   **Blade Templates**: Laravel templating engine
-   **AdminLTE 3**: Admin dashboard template
-   **Bootstrap 4**: CSS framework
-   **jQuery**: JavaScript library
-   **Chart.js**: Data visualization

### Libraries & Packages

-   **barryvdh/laravel-dompdf**: PDF generation
-   **maatwebsite/excel**: Excel import/export
-   **intervention/image**: Image processing
-   **laravel/tinker**: Development tool

## 📄 Struktur Database

### Tabel Utama

-   `users`: Data pengguna sistem (admin, user)
-   `penduduk`: Data penduduk desa (NIK sebagai primary key)
-   `aparatur_desas`: Struktur organisasi desa
-   `berita`: Berita dan pengumuman
-   `agenda`: Kegiatan desa
-   `agenda_karangtaruna`: Kegiatan karang taruna
-   `galery`: Foto dokumentasi
-   `surat_*`: Berbagai jenis surat (SKTM, Usaha, Domisili)
-   `potensi_desas`: Informasi potensi desa

### Relasi Data

-   Auto-fill data surat berdasarkan NIK penduduk
-   User roles untuk authorization (admin, karangtaruna, user)
-   Soft delete untuk data penting
-   Timestamps untuk audit trail

## 🔒 Keamanan

### Fitur Keamanan

-   **CSRF Protection**: Laravel built-in CSRF
-   **XSS Protection**: Input sanitization
-   **SQL Injection Prevention**: Eloquent ORM
-   **Password Hashing**: Bcrypt algorithm
-   **Route Protection**: Middleware authentication
-   **File Upload Validation**: Type dan size validation
-   **Captcha**: Spam protection pada form publik

### Best Practices

-   Regular password update
-   Database backup
-   Server security configuration
-   HTTPS implementation (production)

## 📞 Support & Kontribusi

### Bug Report

Jika menemukan bug, silakan buat issue di GitHub repository dengan detail:

-   Environment (PHP version, OS, Browser)
-   Steps to reproduce
-   Expected vs actual behavior
-   Screenshots (jika diperlukan)

### Feature Request

Untuk request fitur baru, buat issue dengan label "enhancement" dan jelaskan:

-   Use case dan benefit
-   Mockup atau wireframe (jika ada)
-   Technical consideration

## 📝 License

Project ini menggunakan MIT License. Lihat file [LICENSE](LICENSE) untuk detail lengkap.

---

**Developed with ❤️ for Digital Village Transformation**

> Sistem Informasi Desa (SI-DESA) - Memajukan Desa Melalui Teknologi Digital
