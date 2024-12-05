import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nuitritionTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.face),
        Text('Meat'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Vegetable'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Fruit'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Sweet'),
      ],
    ),
  ];
});
