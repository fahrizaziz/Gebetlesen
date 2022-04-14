import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gebetlesen/domain/niat_model.dart';
import 'package:gebetlesen/infrastructure/niat_shalat_service.dart';

class NiatShalatProvider with ChangeNotifier {
  Timer? debounce;
  String keyword = '';
  List<NiatModel> _niat = [];
  List<NiatModel> get niat => _niat.where((element) {
        if (keyword.isEmpty) {
          return true;
        }
        return element.name!.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
  set getNiat(List<NiatModel> niats) {
    _niat = niats;
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
      List<NiatModel> niats = await NiatShalatService().getNiatShalat();
      _niat = niats;
    } catch (e) {
      print(e);
    }
  }
}
