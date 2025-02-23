import 'package:flutter/material.dart';
import 'package:trading_app/widgets/chart_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trading Analysis')),
      body: const Column(
        children: [
          Expanded(child: ChartWidget()), // Grafikni chiqarish
        ],
      ),
    );
  }
}