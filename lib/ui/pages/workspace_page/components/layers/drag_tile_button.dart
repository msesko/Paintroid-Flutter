// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paintroid/ui/theme/data/paintroid_theme.dart';

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
          color: PaintroidTheme.of(context).primaryColor,
          border: Border.all(
            color:
                PaintroidTheme.of(context).primaryContainerColor.withAlpha(128),
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
