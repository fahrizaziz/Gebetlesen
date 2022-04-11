import 'dart:convert';

import 'package:gebetlesen/domain/bacaan_shalat_model.dart';
import 'package:flutter/services.dart';

class BacaanShalatService {
  Future<List<BacaanShalatModel>> getBacaanShalat() async {
    final jsondata = await rootBundle.loadString('assets/data/niatshalat.json');
    print(jsondata);
    List data  = jsonDecode(jsondata);
    List<BacaanShalatModel> bacaan = [];
    for (var item in data) {
      bacaan.add(BacaanShalatModel.fromJson(item));
    }
    return bacaan;
  }
}