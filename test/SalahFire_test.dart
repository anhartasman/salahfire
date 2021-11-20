import 'package:flutter_test/flutter_test.dart';
import 'package:salah_fire/SalahFire.dart';

void main() {
  test('check contain', () {
    final pesanError = "user has already been linked";
    final hasilSalah = SalahFire.pesan(pesanError);
    return expect(hasilSalah,
        "Nomor Anda sudah terdaftar sebelumnya, jika lupa password silahkan reset password");
  });
}
