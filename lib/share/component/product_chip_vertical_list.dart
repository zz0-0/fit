import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductTabVerticalList extends ConsumerStatefulWidget {
  const ProductTabVerticalList({
    required this.chips,
    required this.items,
    required this.chipProvider,
    required this.itemProvider,
    super.key,
  });

  final List<ChoiceChip> chips;
  final List<Widget> items;
  final StateProvider<int> chipProvider;
  final StateProvider<int> itemProvider;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProductTabVerticalListState();
}

class _ProductTabVerticalListState
    extends ConsumerState<ProductTabVerticalList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Product', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 10),
        Wrap(
          spacing: 5,
          children: widget.chips,
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.separated(
            controller: ScrollController(),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 16);
            },
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  ref.read(widget.itemProvider.notifier).state = index;
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 64,
                    color: Colors.grey,
                    child: widget.items[index],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
