import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalTab extends ConsumerStatefulWidget {
  const HorizontalTab({required this.tabs, super.key});

  final List<Widget> tabs;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HorizontalTabState();
}

class _HorizontalTabState extends ConsumerState<HorizontalTab>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: TabController(length: widget.tabs.length, vsync: this),
      isScrollable: true,
      tabs: widget.tabs,
    );
  }
}
