import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/page_layout.dart';
import 'package:vital/share/provider/home/presentation/view/page/home_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabs = ref.watch(homeTabsProvider);
    final page = ref.watch(homeWidgetProvider);
    return PageLayout(
      tabs: tabs,
      page: page,
      indexProvider: homeSelectedIndexProvider,
    );
  }
}
