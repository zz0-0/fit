import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/app/presentation/view/page/summary.dart';
import 'package:vital/feature/beauty/presentation/view/page/beauty.dart';
import 'package:vital/feature/fitness/presentation/view/page/fitness.dart';
import 'package:vital/feature/nutrition/presentation/view/page/nutrition.dart';

final layoutSelectedIndexProvider = StateProvider<int>((ref) => 0);
final layoutWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(layoutSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const Summary();
    case 1:
      return const Nutrition();
    case 2:
      return const Beauty();
    case 3:
      return const Fitness();
    case 4:
      return const Center(child: Text('Home'));
    case 5:
      return const Center(child: Text('Finance'));
    case 6:
      return const Center(child: Text('Trigram'));
    case 7:
      return const Center(child: Text('Settings'));
    default:
      return const Center(child: Text('Main'));
  }
});
