import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gebetlesen/domain/bacaan_shalat_model.dart';
import 'package:gebetlesen/infrastructure/bacaan_shalat_service.dart';

class BacaanShalatProvider with ChangeNotifier {
  Timer? debounce;
  String keyword = '';
  List<BacaanShalatModel> _bacaan = [];
  List<BacaanShalatModel> get bacaan => _bacaan.where((element) {
        if (keyword.isEmpty) {
          return true;
        }
        return element.name!.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
  set getNiat(List<BacaanShalatModel> bacaans) {
    _bacaan = bacaans;
    notifyListeners();
  }

  void search(String newKeyword) {
    if (debounce?.isActive ?? false) {
      debounce?.cancel();
    }
    debounce = Timer(
      const Duration(milliseconds: 300),
      () {
        keyword = newKeyword;
        notifyListeners();
      },
    );
  }

  Future<void> getNiats() async {
    try {
      List<BacaanShalatModel> bacaans =
          await BacaanShalatService().getBacaanShalat();
      _bacaan = bacaans;
    } catch (e) {
      print(e);
    }
  }
}
