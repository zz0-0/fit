import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nutritionScanItemsProvider = Provider<List<Widget>>((ref) {
  return [
    const Text('90'),
    const Text('85'),
    const Text('100'),
    const Text('90'),
  ];
});
final nutritionScanItemSelectedIndexProvider = StateProvider<int>((ref) => 0);
