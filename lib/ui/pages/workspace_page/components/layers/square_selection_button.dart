// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:paintroid/ui/theme/data/paintroid_theme.dart';

class SquareSelectionButton extends HookConsumerWidget {
  const SquareSelectionButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState<bool>(false);

    return GestureDetector(
      onTap: () {
        isSelected.value = !isSelected.value;
      },
      child: isSelected.value
          ? Icon(
              Icons.check_box,
              color: PaintroidTheme.of(context).backgroundColor,
            )
          : Icon(
              Icons.check_box_outline_blank,
              color: PaintroidTheme.of(context).backgroundColor,
            ),
    );
  }
}
