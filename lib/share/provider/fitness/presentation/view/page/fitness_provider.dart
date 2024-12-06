import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fitnessTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.face),
        Text('Skin Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Hair Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Makeup'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Fragrance'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Personal Care'),
      ],
    ),
  ];
});
final fitnessSelectedIndexProvider = StateProvider<int>((ref) => 0);
final fitnessWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(fitnessSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const Center(child: Text('Makeup'));
    case 1:
      return const Center(child: Text('Makeup'));
    case 2:
      return const Center(child: Text('Makeup'));
    case 3:
      return const Center(child: Text('Fragrance'));
    case 4:
      return const Center(child: Text('Personal Care'));
    default:
      return const Center(child: Text('Makeup'));
  }
});
