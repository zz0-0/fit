import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/beauty/presentation/view/page/ingredient.dart';
import 'package:vital/feature/beauty/presentation/view/page/product.dart';
import 'package:vital/feature/beauty/presentation/view/page/scan.dart';

final beautyTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.photo_camera_front_outlined),
        Text('Scan'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.list_alt_outlined),
        Text('Product'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.find_in_page_outlined),
        Text('Ingredient'),
      ],
    ),
  ];
});
final beautySelectedIndexProvider = StateProvider<int>((ref) => 0);
final beautyWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(beautySelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const Scan();
    case 1:
      return const Product();
    case 2:
      return const Ingredient();
    // case 3:
    //   return const Center(child: Text('Fragrance'));
    // case 4:
    //   return const Center(child: Text('Personal Care'));
    default:
      return const Scan();
  }
});
