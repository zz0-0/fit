import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/result_vertical_list.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/scan_provider.dart';

class Scan extends ConsumerWidget {
  const Scan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(scanItemsProvider);
    return ResultVerticalList(
      items: items,
      provider: scanItemSelectedIndexProvider,
    );
  }
}
