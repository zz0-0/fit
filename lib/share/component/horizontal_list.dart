import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HorizontalList extends ConsumerStatefulWidget {
  const HorizontalList({
    required this.items,
    required this.provider,
    super.key,
  });

  final List<Widget> items;
  final StateProvider<int> provider;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HorizontalListState();
}

class _HorizontalListState extends ConsumerState<HorizontalList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(),
      scrollDirection: Axis.horizontal,
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            ref.read(widget.provider.notifier).state = index;
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(width: 65, child: widget.items[index]),
          ),
        );
      },
    );
  }
}
