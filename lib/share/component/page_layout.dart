import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/category_horizontal_list.dart';

class PageLayout extends ConsumerWidget {
  const PageLayout({
    required this.tabs,
    required this.page,
    required this.indexProvider,
    super.key,
  });

  final List<Widget> tabs;
  final Widget page;
  final StateProvider<int> indexProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 112,
            child: CategoryHorizontalList(
              items: tabs,
              indexProvider: indexProvider,
            ),
          ),
          Expanded(child: page),
        ],
      ),
    );
  }
}
