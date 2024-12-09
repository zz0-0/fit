import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/calendar.dart';

class FitnessSchedule extends ConsumerWidget {
  const FitnessSchedule({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Calendar();
  }
}
