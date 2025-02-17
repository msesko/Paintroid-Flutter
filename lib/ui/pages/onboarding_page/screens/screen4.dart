// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paintroid/ui/shared/images/pocketpaint_intro_landscape.dart';
import 'package:paintroid/ui/theme/theme.dart';

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PaintroidTheme.of(context).surfaceColor,
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Landscape',
                style: TextStyle(
                  color: PaintroidTheme.of(context).onSurfaceColor,
                  fontSize: 24,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Pocket Paint also supports drawing in landscape mode to give you the best painting experience.',
                style: TextStyle(
                  color: PaintroidTheme.of(context).onSurfaceColor,
                  fontSize: 15,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          const Expanded(
            flex: 6,
            child: SizedBox(
              width: double.infinity,
              child: PocketPaintIntroLandscape(),
            ),
          ),
        ],
      ),
    );
  }
}
