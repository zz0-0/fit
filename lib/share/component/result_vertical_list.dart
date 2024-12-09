import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultVerticalList extends ConsumerStatefulWidget {
  const ResultVerticalList({
    required this.items,
    required this.indexProvider,
    super.key,
  });

  final List<Widget> items;
  final StateProvider<int> indexProvider;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResultVerticalListState();
}

class _ResultVerticalListState extends ConsumerState<ResultVerticalList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Result', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
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
                  ref.read(widget.indexProvider.notifier).state = index;
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 64,
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: widget.items[index],
                        ),
                      ],
                    ),
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
