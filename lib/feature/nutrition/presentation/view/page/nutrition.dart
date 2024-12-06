import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/horizontal_list.dart';
import 'package:vital/share/provider/nutrition/presentation/view/page/nutrition_provider.dart';

class Nutrition extends ConsumerWidget {
  const Nutrition({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(nutritionTabsProvider);
    final page = ref.watch(nutritionWidgetProvider);
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: HorizontalList(
            items: tabs,
            provider: nutritionSelectedIndexProvider,
          ),
        ),
        Expanded(child: page),
      ],
    );
  }
}
