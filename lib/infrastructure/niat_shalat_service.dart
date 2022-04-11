import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:gebetlesen/domain/niat_model.dart';

class NiatShalatService {
  Future<List<NiatModel>> getNiatShalat() async {
    final jsondata = await rootBundle.loadString('assets/data/niatshalat.json');
    print(jsondata);
    List data  = jsonDecode(jsondata);
    List<NiatModel> niat = [];
    for (var item in data) {
      niat.add(NiatModel.fromJson(item));
    }
    return niat;
  }
}