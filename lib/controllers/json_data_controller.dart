import 'dart:convert';
import 'package:bhagavad_gita/headers.dart';
import 'package:flutter/services.dart';

class BhagavadGita extends ChangeNotifier {
  List allData = [];

  BhagavadGita() {
    loadJSON();
  }

  Future<void> loadJSON() async {
    String data =
        await rootBundle.loadString("lib/assets/bhagavad_gita_data.json");

    allData = jsonDecode(data);
    notifyListeners();
  }
}
