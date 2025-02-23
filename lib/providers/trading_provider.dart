import 'package:flutter/material.dart';

class TradingProvider with ChangeNotifier {
  List<double> prices = [1, 3, 2, 4, 3, 5];

  void fetchData() {
    // Simulyatsiya: API dan ma'lumot yuklash
    prices = List.generate(10, (index) => (index + 1) * 2.0);
    notifyListeners();
  }

  void analyzeData() {
    // Simulyatsiya: Indikatorlar bilan analiz
    print("Supertrend va RSI analiz qilindi.");
  }
}