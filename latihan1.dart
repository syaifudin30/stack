import 'dart:io';

class Konversi {
  // Fungsi untuk mengonversi desimal ke biner
  String desimalKeBiner(int desimal) {
    return desimal.toRadixString(2);
  }

  // Fungsi untuk mengonversi desimal ke oktal
  String desimalKeOktal(int desimal) {
    return desimal.toRadixString(8);
  }

  // Fungsi untuk mengonversi desimal ke heksadesimal
  String desimalKeHeksadesimal(int desimal) {
    return desimal.toRadixString(16).toUpperCase();
  }
}

void main() {
  var konversi = Konversi();

  // Input nilai desimal
  stdout.write("Masukkan nilai desimal: ");
  int desimal = int.parse(stdin.readLineSync()!);

  // Menampilkan hasil konversi
  print('Hasil nilai biner: ${konversi.desimalKeBiner(desimal)}');
  print('Hasil nilai oktal: ${konversi.desimalKeOktal(desimal)}');
  print('Hasil nilai heksadesimal: ${konversi.desimalKeHeksadesimal(desimal)}');
}
