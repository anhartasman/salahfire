import 'dart:convert';

import 'package:flutter/material.dart';

class MetodeBayar {
  final String metode;
  final String asset_icon;
  final String label;
  final Image logo;
  const MetodeBayar({
    this.metode,
    this.asset_icon,
    this.label,
    @required this.logo,
  });

  MetodeBayar copyWith({
    String metode,
    String asset_icon,
    String label,
  }) {
    return MetodeBayar(
      metode: metode ?? this.metode,
      asset_icon: asset_icon ?? this.asset_icon,
      label: label ?? this.label,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'metode': metode,
      'asset_icon': asset_icon,
      'label': label,
    };
  }

  factory MetodeBayar.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MetodeBayar(
      metode: map['metode'],
      asset_icon: map['asset_icon'],
      label: map['label'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MetodeBayar.fromJson(String source) =>
      MetodeBayar.fromMap(json.decode(source));

  @override
  String toString() =>
      'MetodeBayar(metode: $metode, asset_icon: $asset_icon, label: $label)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is MetodeBayar &&
        o.metode == metode &&
        o.asset_icon == asset_icon &&
        o.label == label;
  }

  @override
  int get hashCode => metode.hashCode ^ asset_icon.hashCode ^ label.hashCode;
}
