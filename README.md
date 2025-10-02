# Hello World — Flutter 🚀

> Proyek latihan Flutter untuk mata kuliah **Pemrograman Mobile** (Politeknik Negeri Malang).  
> Disusun bertahap mengikuti codelab JTI Polinema: dari pembuatan repository, widget dasar,  
> hingga penerapan **Material** & **Cupertino** widgets.

---

## Daftar Isi
- [Ringkasan Proyek](#ringkasan-proyek)
- [Prasyarat](#prasyarat)
- [Struktur Proyek](#struktur-proyek)
- [Progress Development](#progress-development)
  - [Praktikum 3 — Membuat Repository GitHub & Laporan](#praktikum-3--membuat-repository-github--laporan)
  - [Praktikum 4 — First App: Widget Dasar Flutter](#praktikum-4--first-app-widget-dasar-flutter)
  - [Praktikum 5 — Menerapkan Widget Material Design & iOS Cupertino](#praktikum-5--menerapkan-widget-material-design--ios-cupertino)
- [Menjalankan Proyek](#menjalankan-proyek)
- [Troubleshooting](#troubleshooting)
- [Referensi](#referensi)
- [Author](#author)

---

## Ringkasan Proyek
- **Platform**: Flutter (stable)
- **Bahasa**: Dart
- **Fokus**: Widget dasar, aset gambar, Material & Cupertino, dialog, input, FAB, serta Date/Time pickers.

---

## Prasyarat
- **Flutter SDK** terpasang dan `flutter doctor` hijau.
- **Android Studio + AVD** (untuk emulator) atau **Chrome** (Flutter Web).
- Git untuk versioning.

---

## Struktur Proyek
```
lib/
 ├─ main.dart
 └─ basic_widget/
     ├─ text_widget.dart
     ├─ image_widget.dart
     ├─ fab_widget.dart
     ├─ loading_cupertino.dart
     ├─ scaffold_widget.dart
     ├─ dialog_widget.dart
     ├─ text_field_widget.dart
     └─ date_time_picker_widget.dart
assets/
 └─ logo_polinema.(png/jpg)
```

> Pastikan `pubspec.yaml` memuat aset:
```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
```

---

## Progress Development

### ✅ Praktikum 3 — Membuat Repository GitHub & Laporan
**Bagian apa**: Inisialisasi repo, setup remote, push proyek, dan penulisan README.  
**Singkatnya**:
- `git init`, tambah remote, commit & push.
- Menyusun **README.md** untuk dokumentasi.
- Inisiasi **nama lengkap** pada tampilan awal.

![Nama Lengkap – App](images/01.png)

---

### ✅ Praktikum 4 — First App: Widget Dasar Flutter
**Bagian apa**: Pengenalan **StatelessWidget** & **StatefulWidget**, beserta widget dasar.  
**Singkatnya**:
- `text_widget.dart` — menampilkan nama lengkap (widget teks kustom).  
  ![Widget Teks Kustom](images/02.png)

- `image_widget.dart` — menampilkan **logo Polinema** dari folder `assets/`.  
  ![Logo Polinema](images/03.png)

- Latihan **Row/Column/Container** & **Hot Reload**.  
- Counter sederhana dengan `setState`.

---

### ✅ Praktikum 5 — Menerapkan Widget Material Design & iOS Cupertino

#### Langkah 1 — Cupertino Button & Loading Bar
**Bagian apa**: `CupertinoButton` & `CupertinoActivityIndicator`.  
**File**: `basic_widget/loading_cupertino.dart` (tanpa membungkus `MaterialApp`).  
![Cupertino Button & Loading](images/04.png)

#### Langkah 2 — Floating Action Button (FAB)
**Bagian apa**: FAB untuk aksi cepat (increment counter); variasi small/large/extended; posisi **centerDocked** dengan **notch**.  
**File**: `basic_widget/fab_widget.dart`  
![Floating Action Button](images/05.png)

#### Langkah 3 — Scaffold Widget
**Bagian apa**: Kerangka **Material**: `AppBar`, `body`, `BottomAppBar`, `floatingActionButton`.  
**File**: `basic_widget/scaffold_widget.dart`  
![Scaffold Widget](images/06.png)

#### Langkah 4 — Dialog Widgets (AlertDialog & SimpleDialog)
**Bagian apa**: Dialog konfirmasi & pemilihan opsi.  
**File**: `basic_widget/dialog_widget.dart`  
![AlertDialog](images/07_1.png)
![SimpleDialog – Pilihan](images/07_2.png)
![SnackBar – Hasil Pilihan](images/07_3.png)

#### Langkah 5 — Input & Selection (TextField)
**Bagian apa**: Form input menggunakan **TextField** + `InputDecoration`.  
**File**: `basic_widget/text_field_widget.dart`  
![TextField](images/08.png)

#### Langkah 6 — Date & Time Pickers
**Bagian apa**: `showDatePicker` & `showTimePicker` dengan tombol di tengah.  
**File**: `basic_widget/date_time_picker_widget.dart`  
![Date Picker](images/09_1.png)
![Time Picker](images/09_2.png)
![Hasil Pilihan](images/09_3.png)

---

## Menjalankan Proyek

### Via VS Code
1. **Pilih device** (Android Emulator / Chrome) di status bar.  
2. Tekan **F5** (Start Debugging). Gunakan **Hot Reload** (Ctrl+S) & **Hot Restart** bila perlu.

### Via Terminal
```bash
flutter pub get
flutter run -d chrome      # atau emulator-5554, windows, macos, linux
```

> Jika aset gambar tidak tampil di Flutter Web, lakukan **hard refresh** (Ctrl+Shift+R)  
> dan pastikan `assets/` sudah terdaftar di `pubspec.yaml`.

---

## Troubleshooting
- **Invalid constant value (Scaffold/AppBar)** → Jangan beri `const` pada `Scaffold`/`AppBar`.
- **Unable to load asset** → Cek indentasi & path di `pubspec.yaml`; lalu `flutter clean` → `flutter pub get`.
- **FAB “nabrak” nav bawah** → Gunakan `BottomAppBar` dengan `shape: CircularNotchedRectangle()` + `centerDocked`.

---

## Referensi
- Codelab JTI Polinema — *Aplikasi Pertama & Widget Dasar Flutter*  
  https://jti-polinema.github.io/flutter-codelab/05-first-app-widget-dasar-flutter/#0

---

## Author
**(2341760168) — A. A. Ngurah Sadhu Gunawan**
