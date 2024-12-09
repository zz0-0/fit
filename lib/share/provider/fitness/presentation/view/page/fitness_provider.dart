import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/fitness/presentation/view/page/fitness_body.dart';
import 'package:vital/feature/fitness/presentation/view/page/fitness_schedule.dart';
import 'package:vital/feature/fitness/presentation/view/page/fitness_type.dart';

final fitnessTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.schedule_outlined),
        Text('Schedule'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.person_outlined),
        Text('Body'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.fitness_center_outlined),
        Text('Type'),
      ],
    ),
  ];
});
final fitnessSelectedIndexProvider = StateProvider<int>((ref) => 0);
final fitnessWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(fitnessSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const FitnessSchedule();
    case 1:
      return const FitnessBody();
    case 2:
      return const FitnessType();
    case 3:
      return const Center(child: Text('Fragrance'));
    case 4:
      return const Center(child: Text('Personal Care'));
    default:
      return const Center(child: Text('Makeup'));
  }
});
