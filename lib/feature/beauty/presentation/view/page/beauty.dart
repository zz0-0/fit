import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/category_horizontal_list.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/beauty_provider.dart';

class Beauty extends ConsumerWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(beautyTabsProvider);
    final page = ref.watch(beautyWidgetProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 112,
            child: CategoryHorizontalList(
              items: tabs,
              provider: beautySelectedIndexProvider,
            ),
          ),
          Expanded(child: page),
        ],
      ),
    );
  }
}
