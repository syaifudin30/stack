import 'dart:io';

class Palindrom {
  // Fungsi untuk membalik kalimat
  String balikKalimat(String kalimat) {
    return kalimat.split('').reversed.join('');
  }

  // Fungsi untuk memeriksa apakah kalimat adalah palindrom
  bool cekPalindrom(String kalimat) {
    String reversedKalimat = balikKalimat(kalimat);
    return kalimat == reversedKalimat;
  }
}

void main() {
  var palindrom = Palindrom();

  // Input kalimat
  stdout.write("Masukkan kalimat: ");
  String kalimat = stdin.readLineSync()!;

  // Membalik kalimat dan memeriksa palindrom
  String kalimatTerbalik = palindrom.balikKalimat(kalimat);
  print('Hasil = $kalimatTerbalik');
  if (palindrom.cekPalindrom(kalimat)) {
    print('Palindrom');
  } else {
    print('Bukan palindrom');
  }
}
