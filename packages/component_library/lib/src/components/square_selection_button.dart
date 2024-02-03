import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SquareSelectionButton extends HookConsumerWidget {
  const SquareSelectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Use useState to manage the isSelected state
    final isSelected = useState<bool>(false);

    return GestureDetector(
      onTap: () {
        isSelected.value = !isSelected.value; // Toggle the state
      },
      child: isSelected.value
          ? Icon(
              Icons.check_box,
              color: lightColorScheme.background,
            )
          : Icon(
              Icons.check_box_outline_blank,
              color: lightColorScheme.background,
            ),
    );
  }
}
