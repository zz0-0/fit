import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PopluarHorizontalList extends ConsumerStatefulWidget {
  const PopluarHorizontalList({
    required this.items,
    required this.provider,
    super.key,
  });

  final List<Widget> items;
  final StateProvider<int> provider;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PopluarHorizontalListState();
}

class _PopluarHorizontalListState extends ConsumerState<PopluarHorizontalList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Popluar', style: TextStyle(fontSize: 20)),
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
                  ref.read(widget.provider.notifier).state = index;
                },
                child: ClipRRect(
                  child: Container(
                    width: 244,
                    height: 164,
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child:
                              Text(widget.items[index].runtimeType.toString()),
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
