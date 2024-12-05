import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalTab extends ConsumerStatefulWidget {
  const HorizontalTab({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HorizontalTabState();
}

class _HorizontalTabState extends ConsumerState<HorizontalTab> {
  @override
  Widget build(BuildContext context) {
    return const TabBar(
      isScrollable: true,
      tabs: [
        Tab(
          icon: Icon(Icons.group_add),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.group_add),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.group_add),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.group_add),
          text: 'Home',
        ),
        Tab(
          icon: Icon(Icons.group_add),
          text: 'Home',
        ),
      ],
    );
  }
}
