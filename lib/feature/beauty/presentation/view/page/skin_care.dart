import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/popular_horizontal_list.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/beauty_provider.dart';

class SkinCare extends ConsumerWidget {
  const SkinCare({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(beautyTabsProvider);
    return PopluarHorizontalList(
      items: tabs,
      provider: beautySelectedIndexProvider,
    );
  }
}
