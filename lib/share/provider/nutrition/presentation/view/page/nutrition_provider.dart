import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/nutrition/presentation/view/page/nutrition_ingredient.dart';
import 'package:vital/feature/nutrition/presentation/view/page/nutrition_recipe.dart';
import 'package:vital/feature/nutrition/presentation/view/page/nutrition_scan.dart';

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
        Text('Recipe'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.select_all_outlined),
        Text('Ingredient'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.webhook_outlined),
        Text('Graph'),
      ],
    ),
  ];
});
final nutritionSelectedIndexProvider = StateProvider<int>((ref) => 0);
final nutritionWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(nutritionSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const NutritionScan();
    case 1:
      return const NutritionRecipe();
    case 2:
      return const NutritionIngredient();
    case 3:
      return const Center(child: Text('Graph'));
    default:
      return const NutritionScan();
  }
});
