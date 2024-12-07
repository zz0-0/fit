import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nutritionTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.camera_enhance_outlined),
        Text('Scan'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.list_alt_outlined),
        Text('Hair Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.select_all_outlined),
        Text('Makeup'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.webhook_outlined),
        Text('Fragrance'),
      ],
    ),
  ];
});
final nutritionSelectedIndexProvider = StateProvider<int>((ref) => 0);
final nutritionWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(nutritionSelectedIndexProvider);
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
