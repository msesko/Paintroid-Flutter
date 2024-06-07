// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:paintroid/ui/pages/workspace_page/components/layers/square_selection_button.dart';

import 'package:paintroid/ui/theme/data/paintroid_theme.dart';

class LayerControls extends HookConsumerWidget {
  final String name;
  final bool isSelected;
  final bool isFirst;
  final bool isLast;
  final VoidCallback onSelectLayer;
  final Function onDragUpwards;
  final Function onDragDownwards;
  final ValueNotifier<int> relativeDragCount;

  const LayerControls({
    super.key,
    required this.name,
    required this.isSelected,
    required this.isFirst,
    required this.isLast,
    required this.onSelectLayer,
    required this.onDragUpwards,
    required this.onDragDownwards,
    required this.relativeDragCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dragStartOffset = useState(Offset.zero);
    const layerControlsHeight = 250 - 50 - 8 - 15;

    return Row(
      children: [
        const SizedBox(width: 5),
        Container(
          width: 220 - 5,
          height: layerControlsHeight.toDouble(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: isFirst
                  ? const Radius.circular(20)
                  : const Radius.circular(0),
              bottomLeft:
                  isLast ? const Radius.circular(20) : const Radius.circular(0),
            ),
            color: isSelected
                ? PaintroidTheme.of(context).primaryColor
                : PaintroidTheme.of(context).inversePrimaryColor,
          ),
          child: Row(
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SquareSelectionButton(),
                      GestureDetector(
                        onVerticalDragStart: (details) {
                          dragStartOffset.value = details.globalPosition;
                        },
                        onVerticalDragUpdate: (details) {
                          final dragDistance = dragStartOffset.value.dy -
                              details.globalPosition.dy;

                          if (dragDistance > layerControlsHeight) {
                            onDragUpwards.call();
                            dragStartOffset.value = details.globalPosition;
                          }
                          if (dragDistance < -layerControlsHeight) {
                            onDragDownwards.call();
                            dragStartOffset.value = details.globalPosition;
                          }
                        },
                        onVerticalDragEnd: (details) {
                          relativeDragCount.value = 0;
                        },
                        child: Icon(
                          Icons.menu,
                          color: PaintroidTheme.of(context).backgroundColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    children: [],
                  ),
                ],
              ),
              const SizedBox(width: 20.0),
              const Text('slider'),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () => onSelectLayer.call(),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Center(child: Text(name)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
