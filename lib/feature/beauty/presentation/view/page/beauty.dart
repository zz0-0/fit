import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/horizontal_tab.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/beauty_provider.dart';

class Beauty extends ConsumerWidget {
  const Beauty({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(beautyTabsProvider);
    return Column(
      children: [
        HorizontalTab(tabs: tabs),
      ],
    );
  }
}
