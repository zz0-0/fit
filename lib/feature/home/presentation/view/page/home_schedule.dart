import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/calendar.dart';

class HomeSchedule extends ConsumerWidget {
  const HomeSchedule({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Calendar();
  }
}
