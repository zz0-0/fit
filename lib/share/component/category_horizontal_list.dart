import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryHorizontalList extends ConsumerStatefulWidget {
  const CategoryHorizontalList({
    required this.items,
    required this.indexProvider,
    super.key,
  });

  final List<Widget> items;
  final StateProvider<int> indexProvider;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CategoryHorizontalListState();
}

class _CategoryHorizontalListState
    extends ConsumerState<CategoryHorizontalList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Category', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.separated(
            controller: ScrollController(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 16);
            },
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  ref.read(widget.indexProvider.notifier).state = index;
                },
                child: SizedBox(width: 65, child: widget.items[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
