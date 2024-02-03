import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:workspace_screen/workspace_screen.dart';

class LayersRightSheet extends HookConsumerWidget {
  const LayersRightSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final layers = useState<List<int>>([0]);
    final selectedLayer = useState<int>(0);
    final layerCounter = useState<int>(0);

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
                color: lightColorScheme.inversePrimary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.remove_red_eye,
                      color: lightColorScheme.background.withAlpha(100),
                      size: 35.0,
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.water_drop,
                      color: lightColorScheme.background.withAlpha(100),
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
                color: lightColorScheme.primary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.layers,
                      color: lightColorScheme.background,
                      size: 35.0,
                    ),
                    onTap: () {
                      addLayer.call();
                    },
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.delete,
                      color: lightColorScheme.background,
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
            color: lightColorScheme
                .surfaceVariant, // Set your desired background color here
            // Add more decoration properties as needed, such as borderRadius, border, etc.
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
                            clickSelectLayer: () {
                              selectedLayer.value = layers.value[index];
                            },
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
