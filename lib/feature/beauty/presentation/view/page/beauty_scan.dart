import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vital/share/component/result_vertical_list.dart';
import 'package:vital/share/provider/beauty/presentation/view/page/beauty_scan_provider.dart';

class BeautyScan extends ConsumerWidget {
  const BeautyScan({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(beautyScanItemsProvider);
    return ResultVerticalList(
      items: items,
      provider: beautyScanItemSelectedIndexProvider,
    );
  }
}
