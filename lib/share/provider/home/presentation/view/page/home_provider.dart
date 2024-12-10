import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/feature/home/presentation/view/page/home_energy.dart';
import 'package:vital/feature/home/presentation/view/page/home_schedule.dart';
import 'package:vital/feature/home/presentation/view/page/home_widget.dart';

final homeTabsProvider = Provider<List<Widget>>((ref) {
  return [
    const Column(
      children: [
        Icon(Icons.schedule_outlined),
        Text('Widget'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.person_outlined),
        Text('Schedule'),
      ],
    ),
    const Column(
      children: [
        Icon(Icons.auto_graph_outlined),
        Text('Energy'),
      ],
    ),
  ];
});
final homeSelectedIndexProvider = StateProvider<int>((ref) => 0);
final homeWidgetProvider = Provider<Widget>((ref) {
  final selectedIndex = ref.watch(homeSelectedIndexProvider);
  switch (selectedIndex) {
    case 0:
      return const HomeWidget();
    case 1:
      return const HomeSchedule();
    case 2:
      return const HomeEnergy();
    default:
      return const HomeWidget();
  }
});
