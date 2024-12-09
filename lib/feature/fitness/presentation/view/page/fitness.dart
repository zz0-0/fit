import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/page_layout.dart';
import 'package:vital/share/provider/fitness/presentation/view/page/fitness_provider.dart';

class Fitness extends ConsumerWidget {
  const Fitness({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(fitnessTabsProvider);
    final page = ref.watch(fitnessWidgetProvider);
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SizedBox(
    //         height: 112,
    //         child: CategoryHorizontalList(
    //           items: tabs,
    //           provider: fitnessSelectedIndexProvider,
    //         ),
    //       ),
    //       Expanded(child: page),
    //     ],
    //   ),
    // );
    return PageLayout(
      tabs: tabs,
      page: page,
      indexProvider: fitnessSelectedIndexProvider,
    );
  }
}
