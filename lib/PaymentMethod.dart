import 'package:flutter/material.dart';

import 'PayMethod.dart';

class PaymentMethod {
  static const PayMethod ovo_cash = const PayMethod(
      metode: "ovo_cash", label: "OVO", asset_icon: "assets/icon/icon_ovo.png",
  logo: const Image(
    image: AssetImage('assets/icon/icon_ovo.png'),
  ),);
  static const PayMethod trf_bca = const PayMethod(
      metode: "trf_bca",
      label: "Transfer BCA",
      asset_icon: "assets/icon/icon_bca.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_bca.png'),
    ),);
  static const PayMethod trf_bni = const PayMethod(
      metode: "trf_bni",
      label: "Transfer BNI",
      asset_icon: "assets/icon/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_bni.png'),
    ),);
  static const PayMethod trf_mdr = const PayMethod(
      metode: "trf_mdr",
      label: "Transfer Mandiri",
      asset_icon: "assets/icon/icon_mandiri.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_mandiri.png'),
    ),);
  static const PayMethod trf_bri = const PayMethod(
      metode: "trf_bri",
      label: "Transfer BRI",
      asset_icon: "assets/icon/icon_bri.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_bri.png'),
    ),);
  static const PayMethod va_bni = const PayMethod(
      metode: "va_bni",
      label: "Virtual Account BNI",
      asset_icon: "assets/icon/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_bni.png'),
    ),);
  static const PayMethod cash = const PayMethod(
      metode: "cash", label: "Tunai", asset_icon: "assets/icon/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_bni.png'),
    ),);
  static const PayMethod gopay = const PayMethod(
      metode: "gopay",
      label: "Go-Pay",
      asset_icon: "assets/icon/icon_gopay.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_gopay.png'),
    ),);
  static const PayMethod dana = const PayMethod(
      metode: "dana", label: "Dana", asset_icon: "assets/icon/icon_dana.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_dana.png'),
    ),);
  static const PayMethod linkaja = const PayMethod(
      metode: "linkaja",
      label: "Link Aja",
      asset_icon: "assets/icon/icon_link_aja.png",
    logo: const Image(
      image: AssetImage('assets/icon/icon_link_aja.png'),
    ),);
  static const List<PayMethod> All = [
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

  static PayMethod getPaymentMethodDetailByCode(String payment_code) {
    var the_paymethod = null;
    All.forEach((element) {
      if (element.metode == payment_code) {
        print("Dapet yang cocok");
        the_paymethod = element;
      }
    });
    return the_paymethod;
  }

}
