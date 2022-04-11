import 'package:flutter/material.dart';
import 'package:gebetlesen/domain/bacaan_shalat_model.dart';
import 'package:gebetlesen/infrastructure/bacaan_shalat_service.dart';

class BacaanShalatProvider with ChangeNotifier {
  List<BacaanShalatModel> _bacaan = [];
  List<BacaanShalatModel> get bacaan => _bacaan;
  set getNiat(List<BacaanShalatModel> bacaans) {
    _bacaan = bacaans;
    notifyListeners();
  }
  Future<void> getNiats() async {
    try {
      List<BacaanShalatModel> bacaans = await BacaanShalatService().getBacaanShalat();
      _bacaan = bacaans;
    } catch (e) {
      print(e);
    }
  }
}