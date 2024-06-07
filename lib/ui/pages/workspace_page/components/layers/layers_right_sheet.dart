// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:paintroid/ui/pages/workspace_page/components/layers/layer_controls.dart';
import 'package:paintroid/ui/theme/data/paintroid_theme.dart';

class LayersRightSheet extends HookConsumerWidget {
  const LayersRightSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layers = useState<List<int>>([0]);
    final selectedLayer = useState<int>(0);
    final layerCounter = useState<int>(0);

    final relativeDragCount = useState<int>(0);

    void addLayer() {
      layerCounter.value++;
      layers.value = [...layers.value, layerCounter.value];
    }

    void removeLayer() {
      if (layers.value.length <= 1 ||
          !layers.value.contains(selectedLayer.value)) {
        return;
      }

      int index = layers.value.indexOf(selectedLayer.value);

      final newList = List<int>.from(layers.value)..remove(selectedLayer.value);
      layers.value = newList;

      if (newList.isNotEmpty) {
        if (index > 0) {
          selectedLayer.value = newList[index - 1];
        } else {
          selectedLayer.value = newList.first;
        }
      } else {
        selectedLayer.value = 0;
        layerCounter.value = 0;
      }
    }

    void switchLayers(int index1, int index2) {
      if (index1 < 0 ||
          index2 < 0 ||
          index1 >= layers.value.length ||
          index2 >= layers.value.length) {
        return;
      }

      List<int> newLayers = List<int>.from(layers.value);

      int temp = newLayers[index1];
      newLayers[index1] = newLayers[index2];
      newLayers[index2] = temp;

      layers.value = List<int>.from(newLayers);
    }

    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 220 / 2,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                ),
                color: PaintroidTheme.of(context).inversePrimaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.remove_red_eye,
                      color: PaintroidTheme.of(context)
                          .backgroundColor
                          .withAlpha(100),
                      size: 35.0,
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.water_drop,
                      color: PaintroidTheme.of(context)
                          .backgroundColor
                          .withAlpha(100),
                      size: 35.0,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              width: 220 / 2,
              decoration: BoxDecoration(
                color: PaintroidTheme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.layers,
                      color: PaintroidTheme.of(context).backgroundColor,
                      size: 35.0,
                    ),
                    onTap: () {
                      addLayer.call();
                    },
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.delete,
                      color: PaintroidTheme.of(context).backgroundColor,
                      size: 35.0,
                    ),
                    onTap: () {
                      removeLayer.call();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
            color: PaintroidTheme.of(context).surfaceVariantColor,
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 200,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                      layers.value.length,
                      (index) => Column(
                        children: [
                          LayerControls(
                            name: layers.value[index].toString(),
                            isSelected:
                                layers.value[index] == selectedLayer.value,
                            isFirst: layers.value[index] == layers.value[0],
                            isLast: layers.value[index] == layers.value.last,
                            onSelectLayer: () {
                              selectedLayer.value = layers.value[index];
                            },
                            onDragUpwards: () {
                              final int relativeIndex =
                                  index + relativeDragCount.value;
                              if (relativeIndex < layers.value.length) {
                                switchLayers(relativeIndex, relativeIndex - 1);
                                relativeDragCount.value--;
                              }
                            },
                            onDragDownwards: () {
                              final int relativeIndex =
                                  index + relativeDragCount.value;
                              if (relativeIndex < layers.value.length - 1) {
                                switchLayers(relativeIndex, relativeIndex + 1);
                                relativeDragCount.value++;
                              }
                            },
                            relativeDragCount: relativeDragCount,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ],
    );
  }
}
