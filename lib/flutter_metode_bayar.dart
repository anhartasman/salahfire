library flutter_metode_bayar;

import 'MetodeBayar.dart';

class PaymentMethod {
  static const MetodeBayar ovo_cash = const MetodeBayar(
      metode: "ovo_cash", label: "OVO", asset_icon: "assets/icon/icon_ovo.png");
  static const MetodeBayar trf_bca = const MetodeBayar(
      metode: "trf_bca",
      label: "Transfer BCA",
      asset_icon: "assets/icon/icon_bca.png");
  static const MetodeBayar trf_bni = const MetodeBayar(
      metode: "trf_bni",
      label: "Transfer BNI",
      asset_icon: "assets/icon/icon_bni.png");
  static const MetodeBayar trf_mdr = const MetodeBayar(
      metode: "trf_mdr",
      label: "Transfer Mandiri",
      asset_icon: "assets/icon/icon_mandiri.png");
  static const MetodeBayar trf_bri = const MetodeBayar(
      metode: "trf_bri",
      label: "Transfer BRI",
      asset_icon: "assets/icon/icon_bri.png");
  static const MetodeBayar va_bni = const MetodeBayar(
      metode: "va_bni",
      label: "Virtual Account BNI",
      asset_icon: "assets/icon/icon_bni.png");
  static const MetodeBayar cash = const MetodeBayar(
      metode: "cash", label: "Tunai", asset_icon: "assets/icon/icon_bni.png");
  static const MetodeBayar gopay = const MetodeBayar(
      metode: "gopay",
      label: "Go-Pay",
      asset_icon: "assets/icon/icon_gopay.png");
  static const MetodeBayar dana = const MetodeBayar(
      metode: "dana", label: "Dana", asset_icon: "assets/icon/icon_dana.png");
  static const MetodeBayar linkaja = const MetodeBayar(
      metode: "linkaja",
      label: "Link Aja",
      asset_icon: "assets/icon/icon_link_aja.png");
  static const List<MetodeBayar> All = [
    ovo_cash,
    trf_bca,
    trf_bni,
    trf_mdr,
    trf_bri,
    va_bni,
    cash,
    dana,
    linkaja
  ];
}
