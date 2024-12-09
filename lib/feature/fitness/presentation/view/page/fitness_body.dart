import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/human_body.dart';

class FitnessBody extends ConsumerWidget {
  const FitnessBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HumanBody();
  }
}
