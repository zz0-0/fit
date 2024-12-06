import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/beauty/presentation/view/page/beauty.dart';

final layoutSelectedIndexProvider = StateProvider<int>((ref) => 0);
final layoutWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(layoutSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const Center(child: Text('Home'));
    case 1:
      return const Center(child: Text('Nutrition'));
    case 2:
      return const Beauty();
    case 3:
      return const Center(child: Text('Fitness'));
    case 4:
      return const Center(child: Text('Settings'));
    default:
      return const Center(child: Text('Home'));
  }
});
