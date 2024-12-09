import 'package:body_part_selector/body_part_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HumanBody extends ConsumerStatefulWidget {
  const HumanBody({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HumanBodyState();
}

class _HumanBodyState extends ConsumerState<HumanBody> {
  BodyParts _bodyParts = const BodyParts();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Muscle', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Expanded(
          child: BodyPartSelectorTurnable(
            bodyParts: _bodyParts,
            onSelectionUpdated: (p) => setState(() => _bodyParts = p),
            labelData: const RotationStageLabelData(
              front: 'Vorne',
              left: 'Links',
              right: 'Rechts',
              back: 'Hinten',
            ),
          ),
        ),
      ],
    );
  }
}
