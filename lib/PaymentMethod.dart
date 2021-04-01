import 'package:flutter/material.dart';

import 'PayMethod.dart';

class PaymentMethod {
  static const PayMethod ovo_cash = const PayMethod(
    metode: "ovo_cash",
    label: "OVO",
    asset_icon: "assets/icon_metode_bayar/icon_ovo.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_ovo.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod trf_bca = const PayMethod(
    metode: "trf_bca",
    label: "Transfer BCA",
    asset_icon: "assets/icon_metode_bayar/icon_bca.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bca.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod va_bca = const PayMethod(
    metode: "va_bca",
    label: "Virtual Account BCA",
    asset_icon: "assets/icon_metode_bayar/icon_bca.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bca.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod trf_bni = const PayMethod(
    metode: "trf_bni",
    label: "Transfer BNI",
    asset_icon: "assets/icon_metode_bayar/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bni.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod trf_mdr = const PayMethod(
    metode: "trf_mdr",
    label: "Transfer Mandiri",
    asset_icon: "assets/icon_metode_bayar/icon_mandiri.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_mandiri.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod trf_bri = const PayMethod(
    metode: "trf_bri",
    label: "Transfer BRI",
    asset_icon: "assets/icon_metode_bayar/icon_bri.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bri.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod va_bri = const PayMethod(
    metode: "va_bri",
    label: "Virtual Account BRI",
    asset_icon: "assets/icon_metode_bayar/icon_bri.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bri.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod va_bni = const PayMethod(
    metode: "va_bni",
    label: "Virtual Account BNI",
    asset_icon: "assets/icon_metode_bayar/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bni.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod va_mdr = const PayMethod(
    metode: "va_mdr",
    label: "Virtual Account Mandiri",
    asset_icon: "assets/icon_metode_bayar/icon_mandiri.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_mandiri.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod cash = const PayMethod(
    metode: "cash",
    label: "Tunai",
    asset_icon: "assets/icon_metode_bayar/icon_bni.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_bni.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod gopay = const PayMethod(
    metode: "gopay",
    label: "Go-Pay",
    asset_icon: "assets/icon_metode_bayar/icon_gopay.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_gopay.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod dana = const PayMethod(
    metode: "dana",
    label: "Dana",
    asset_icon: "assets/icon_metode_bayar/icon_dana.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_dana.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod linkaja = const PayMethod(
    metode: "linkaja",
    label: "Link Aja",
    asset_icon: "assets/icon_metode_bayar/icon_link_aja.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_link_aja.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const PayMethod va_permata_bank = const PayMethod(
    metode: "va_permata_bank",
    label: "Virtual Account Permata Bank",
    asset_icon: "assets/icon_metode_bayar/icon_permata_bank.png",
    logo: const Image(
      image: AssetImage('assets/icon_metode_bayar/icon_permata_bank.png',
          package: 'flutter_metode_bayar'),
    ),
  );
  static const List<PayMethod> OnlyVA = [
    va_bca,
    va_bni,
    va_bri,
    va_mdr,
    va_permata_bank,
  ];
  static const List<PayMethod> OnlyEWallet = [
    ovo_cash,
    gopay,
    dana,
    linkaja,
  ];
  static const List<PayMethod> All = [
    trf_bca,
    trf_bni,
    trf_mdr,
    trf_bri,
    va_bca,
    va_bni,
    va_bri,
    va_mdr,
    va_permata_bank,
    ovo_cash,
    gopay,
    dana,
    linkaja,
    cash,
  ];

  static PayMethod getPaymentMethodDetailByCode(String payment_code) {
    var the_paymethod = null;

    for (var element in All) {
      if (element.metode == payment_code) {
        print("Dapet payment method: " + element.metode);
        the_paymethod = element;
        break;
      }
    }

    return the_paymethod;
  }
}
