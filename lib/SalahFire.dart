class SalahFire {
  static String pesan(String errorMsg) {
    print("errorMsg: ${errorMsg}");
    String pesan =
        "Terdapat kesalahan tidak dikenali, silahkan hubungi Call Center";

    if (pesan.contains("already")) {
      pesan =
          "Nomor Anda sudah terdaftar sebelumnya, jika lupa password silahkan reset password";
    } else {
      try {
        if (errorMsg.contains("/") && errorMsg.contains("]")) {
          final errorCode = errorMsg.split("/")[1].split("]")[0].trim();
          switch (errorCode) {
            case "invalid-api-key":
              pesan = "API key tidak valid";
              break;
            case "invalid-user-token":
              pesan = "Token tidak valid";
              break;
            case "network-request-failed":
              pesan = "Kesalahan jaringan";
              break;
            case "operation-not-allowed":
              pesan = "Operasi tidak diizinkan";
              break;
            case "requires-recent-login":
              pesan = "Harap login terlebih dulu";
              break;
            case "too-many-requests":
              pesan = "Terlalu banyak permintaan";
              break;
            case "unauthorized-domain":
              pesan = "Domain tidak terdaftar";
              break;
            case "user-disabled":
              pesan = "Akun sudah didisabled";
              break;
            case "user-token-expired":
              pesan = "Token kadaluarsa";
              break;
            case "web-storage-unsupported":
              pesan = "Tidak mensupport storage";
              break;
          }
        }
      } catch (e) {
        print("SalahFire error ${e}");
      }
    }
    return pesan;
  }
}
