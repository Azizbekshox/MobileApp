import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/trading_provider.dart';
import '../widgets/trading_chart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tradingProvider = Provider.of<TradingProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Trading Dashboard'),
      ),
      body: Column(
        children: [
          Expanded(child: TradingChart()),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => tradingProvider.fetchData(),
                  child: Text('Update Data'),
                ),
                ElevatedButton(
                  onPressed: () => tradingProvider.analyzeData(),
                  child: Text('Analyze'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}