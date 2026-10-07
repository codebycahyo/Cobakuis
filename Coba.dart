import 'dart:io';

void main() {
  // Input data dari pengguna
  stdout.write('Masukkan Nama Pembeli : ');
  String namaPembeli = stdin.readLineSync() ?? '';

  stdout.write('Masukkan Nama Barang  : ');
  String namaBarang = stdin.readLineSync() ?? '';

  stdout.write('Masukkan Harga Barang : ');
  double hargaBarang = double.parse(stdin.readLineSync() ?? '0');

  stdout.write('Masukkan Jumlah Barang: ');
  int jumlahBarang = int.parse(stdin.readLineSync() ?? '0');

  // Perhitungan
  double subtotal = hargaBarang * jumlahBarang;
  double biayaLayanan = subtotal * 0.05;
  double totalBayar = subtotal + biayaLayanan;

  // Output Nota Belanja
  print('\n========================================');
  print('             NOTA BELANJA');
  print('========================================');
  print('Nama Pembeli  : $namaPembeli');
  print('Nama Barang   : $namaBarang');
  print('Harga         : Rp${hargaBarang.toStringAsFixed(0)}');
  print('Jumlah        : $jumlahBarang');
  print('----------------------------------------');
  print('Subtotal      : Rp${subtotal.toStringAsFixed(0)}');
  print('Layanan 5%    : Rp${biayaLayanan.toStringAsFixed(0)}');
  print('----------------------------------------');
  print('Total Bayar   : Rp${totalBayar.toStringAsFixed(0)}');
  print('========================================');
}
