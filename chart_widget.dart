import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TradingChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(1, 3),
                FlSpot(2, 2),
                FlSpot(3, 4),
                FlSpot(4, 3),
                FlSpot(5, 5),
              ],
              isCurved: true,
              colors: [Colors.green],
              barWidth: 3,
              isStrokeCapRound: true,
            ),
          ],
        ),
      ),
    );
  }
}