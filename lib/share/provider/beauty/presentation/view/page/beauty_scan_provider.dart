import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beautyScanItemsProvider = Provider<List<Widget>>((ref) {
  return [
    const Text('90'),
    const Text('85'),
    const Text('100'),
    const Text('90'),
  ];
});
final beautyScanItemSelectedIndexProvider = StateProvider<int>((ref) => 0);
