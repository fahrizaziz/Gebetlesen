import 'package:flutter/material.dart';
import 'package:gebetlesen/domain/niat_model.dart';
import 'package:gebetlesen/infrastructure/niat_shalat_service.dart';

class NiatShalatProvider with ChangeNotifier {
  List<NiatModel> _niat = [];
  List<NiatModel> get niat => _niat;
  set getNiat(List<NiatModel> niats) {
    _niat = niats;
    notifyListeners();
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