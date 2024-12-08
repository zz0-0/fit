import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productChipsProvider = Provider<List<ChoiceChip>>((ref) {
  return [
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(productChipSelectedIndexProvider) == 0,
      onSelected: (bool value) =>
          ref.read(productChipSelectedIndexProvider.notifier).state = 0,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(productChipSelectedIndexProvider) == 1,
      onSelected: (bool value) =>
          ref.read(productChipSelectedIndexProvider.notifier).state = 1,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(productChipSelectedIndexProvider) == 2,
      onSelected: (bool value) =>
          ref.read(productChipSelectedIndexProvider.notifier).state = 2,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(productChipSelectedIndexProvider) == 3,
      onSelected: (bool value) =>
          ref.read(productChipSelectedIndexProvider.notifier).state = 3,
    ),
    ChoiceChip(
      label: const Text('Toner'),
      selected: ref.watch(productChipSelectedIndexProvider) == 4,
      onSelected: (bool value) =>
          ref.read(productChipSelectedIndexProvider.notifier).state = 4,
    ),
  ];
});
final productChipSelectedIndexProvider = StateProvider<int>((ref) => 0);
final productItemsProvider = Provider<List<Widget>>((ref) {
  return [
    const Text('90'),
    const Text('85'),
    const Text('100'),
    const Text('90'),
  ];
});
final productItemSelectedIndexProvider = StateProvider<int>((ref) => 0);
