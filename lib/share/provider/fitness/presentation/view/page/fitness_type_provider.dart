import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fitnessTypeChipsProvider = Provider<List<ChoiceChip>>((ref) {
  return [
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(fitnessTypeChipSelectedIndexProvider) == 0,
      onSelected: (bool value) =>
          ref.read(fitnessTypeChipSelectedIndexProvider.notifier).state = 0,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(fitnessTypeChipSelectedIndexProvider) == 1,
      onSelected: (bool value) =>
          ref.read(fitnessTypeChipSelectedIndexProvider.notifier).state = 1,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(fitnessTypeChipSelectedIndexProvider) == 2,
      onSelected: (bool value) =>
          ref.read(fitnessTypeChipSelectedIndexProvider.notifier).state = 2,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(fitnessTypeChipSelectedIndexProvider) == 3,
      onSelected: (bool value) =>
          ref.read(fitnessTypeChipSelectedIndexProvider.notifier).state = 3,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(fitnessTypeChipSelectedIndexProvider) == 4,
      onSelected: (bool value) =>
          ref.read(fitnessTypeChipSelectedIndexProvider.notifier).state = 4,
    ),
  ];
});
final fitnessTypeChipSelectedIndexProvider = StateProvider<int>((ref) => 0);
final fitnessTypeItemsProvider = Provider<List<Widget>>((ref) {
  return [
    const Text('90'),
    const Text('85'),
    const Text('100'),
    const Text('90'),
  ];
});
final fitnessTypeItemSelectedIndexProvider = StateProvider<int>((ref) => 0);
