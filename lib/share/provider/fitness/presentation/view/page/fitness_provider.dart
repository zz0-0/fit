import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fitnessTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.face),
        Text('Exercise'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.face),
        Text('Body'),
      ],
    ),
  ];
});
