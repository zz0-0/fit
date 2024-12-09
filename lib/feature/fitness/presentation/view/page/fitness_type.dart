import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/product_chip_vertical_list.dart';
import 'package:vital/share/provider/fitness/presentation/view/page/fitness_type_provider.dart';

class FitnessType extends ConsumerWidget {
  const FitnessType({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chips = ref.watch(fitnessTypeChipsProvider);
    final items = ref.watch(fitnessTypeItemsProvider);
    return ProductTabVerticalList(
      chips: chips,
      items: items,
      chipIndexProvider: fitnessTypeChipSelectedIndexProvider,
      itemIndexProvider: fitnessTypeItemSelectedIndexProvider,
    );
  }
}
