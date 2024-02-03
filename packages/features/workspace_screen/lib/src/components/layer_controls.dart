import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class LayerControls extends StatelessWidget {
  final String name;
  final bool isSelected;
  final bool isFirst;
  final bool isLast;
  final VoidCallback clickSelectLayer;
  const LayerControls({
    super.key,
    required this.name,
    required this.isSelected,
    required this.isFirst,
    required this.isLast,
    required this.clickSelectLayer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () => clickSelectLayer.call(),
          child: Container(
            width: 220 - 5,
            height: 250 - 50 - 8 - 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: isFirst
                    ? const Radius.circular(20)
                    : const Radius.circular(0),
                bottomLeft: isLast
                    ? const Radius.circular(20)
                    : const Radius.circular(0),
              ),
              color: isSelected
                  ? lightColorScheme.primary
                  : lightColorScheme.inversePrimary,
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
                        Icon(
                          Icons.menu,
                          color: lightColorScheme.background,
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
                Text(name),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
