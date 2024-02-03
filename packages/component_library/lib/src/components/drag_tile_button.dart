import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';

class DragTilePart extends StatelessWidget {
  const DragTilePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20, // Adjust width as needed
      height: 5, // Adjust height as needed
      decoration: BoxDecoration(
          color:
              lightColorScheme.primary, // Background color of the sunken area
          border: Border.all(
            color: lightColorScheme.primaryContainer.withAlpha(128),
            width: 1,
          )),
    );
  }
}

class DragTileButton extends StatelessWidget {
  const DragTileButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DragTilePart(),
        SizedBox(height: 2),
        DragTilePart(),
        SizedBox(height: 2),
        DragTilePart(),
        SizedBox(height: 2),
        DragTilePart(),
      ],
    );
  }
}
