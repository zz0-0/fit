import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeEnergy extends ConsumerWidget {
  const HomeEnergy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LineChart(
      LineChartData(),
    );
  }
}
