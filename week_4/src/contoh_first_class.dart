void main() {
  tampilDataDiri('Raden Rizki', hitungUmur(2002));
}

int hitungUmur(int tahunLahir) {
    return 2023 - tahunLahir;
}

void tampilDataDiri(String nama, int umur) {
  print('$nama berumur $umur tahun');
}