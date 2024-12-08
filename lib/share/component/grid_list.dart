import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridList extends ConsumerStatefulWidget {
  const GridList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GridListState();
}

class _GridListState extends ConsumerState<GridList> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: const GridTile(
            child: Icon(Icons.image),
          ),
        );
      },
    );
  }
}
