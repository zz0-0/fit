import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/result_vertical_list.dart';
import 'package:vital/share/provider/nutrition/presentation/view/page/nutrition_scan_provider.dart';

class NutritionScan extends ConsumerWidget {
  const NutritionScan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(nutritionScanItemsProvider);
    return ResultVerticalList(
      items: items,
      indexProvider: nutritionScanItemSelectedIndexProvider,
    );
  }
}
