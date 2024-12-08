import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/beauty/presentation/view/page/beauty_ingredient.dart';
import 'package:vital/feature/beauty/presentation/view/page/beauty_product.dart';
import 'package:vital/feature/beauty/presentation/view/page/beauty_scan.dart';

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
      return const BeautyScan();
    case 1:
      return const BeautyProduct();
    case 2:
      return const BeautyIngredient();
    default:
      return const BeautyScan();
  }
});
