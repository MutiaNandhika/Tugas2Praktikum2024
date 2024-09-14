# Tugas Pertemuan 2

Nama : Mutia Nandhika
NIM : H1D022078
Shift Baru: A

Proses passing data dari form menuju tampilan:
1.	Pengisian Form: Pengguna mengisi tiga data pada form di FormData: nama, NIM, dan tahun lahir.
2.	Mengambil Input: Ketika tombol Simpan ditekan, data yang diisi diambil menggunakan TextEditingController dari tiga text field (nama, NIM, dan tahun lahir).
3.	Navigasi ke Halaman TampilData: Setelah tombol Simpan ditekan, aplikasi berpindah halaman menggunakan Navigator.push, dan mengirimkan data yang diambil tadi (nama, NIM, dan tahun lahir) ke halaman TampilData.
4.	Menampilkan Data: Di halaman TampilData, data yang diterima ditampilkan dengan menghitung umur berdasarkan tahun lahir yang dikirim, kemudian ditampilkan dalam bentuk teks di layar.

## Screenshot
Contoh :
![InputData](https://github.com/user-attachments/assets/8006d8f4-8a5f-4f12-ba36-d248978ce674)
![TampilData](https://github.com/user-attachments/assets/8a425521-67cd-4615-8504-9d123ae6feda)
