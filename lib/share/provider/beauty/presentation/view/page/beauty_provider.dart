import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final beautyTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.face),
        Text('Skin Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Hair Care'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Makeup'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Fragrance'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Personal Care'),
      ],
    ),
  ];
});
