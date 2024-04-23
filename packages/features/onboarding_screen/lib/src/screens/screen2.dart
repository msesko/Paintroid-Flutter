// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:component_library/component_library.dart';
import 'package:workspace_screen/workspace_screen.dart';

// Project imports:
import 'package:onboarding_screen/onboarding_screen.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List<String> titles = ['Tools', 'Current', 'Color', 'Layers', 'Undo', 'Redo'];

  List<String> descriptions = [
    'Switch to the tool you want to use.',
    'Shows the currently used tool and opens its options.',
    'Shows the currently used color and opens the color picker.',
    'Opens the layer menu and lets you manage your layers.',
    'Tap to undo your previous action.',
    'Tap to redo an undone action.',
  ];

  String titleText = 'More possibilities';
  String descText =
      'Use the top bar to open the overflow menu and to undo or redo changes';

  void onPressed(int i) {
    setState(() {
      titleText = titles[i];
      descText = descriptions[i];
    });
  }

  void tools() => onPressed(0);

  void current() => onPressed(1);

  void color() => onPressed(2);

  void layers() => onPressed(3);

  void undo() => onPressed(4);

  void redo() => onPressed(5);

  @override
  Widget build(BuildContext context) {
    var title = Text(
      titleText,
      style: TextStyle(
        color: PaintroidTheme.of(context).onSurfaceColor,
        fontSize: 24.0,
      ),
      textAlign: TextAlign.start,
    );

    var desc = Text(
      descText,
      style: TextStyle(
        color: PaintroidTheme.of(context).onSurfaceColor,
        fontSize: 15.0,
      ),
      textAlign: TextAlign.start,
    );

    return Scaffold(
      appBar: OnboardingPageAppBar(
        title: 'Pocket Paint',
        onPressed: [undo, redo],
      ),
      backgroundColor: Colors.grey.shade400,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.hardEdge,
          children: [
            Center(
              child: SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Transform.scale(
                    scale: 0.85,
                    child: const DrawingCanvas(),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              color: const Color.fromARGB(220, 0, 151, 167),
              padding: const EdgeInsets.only(top: 50, left: 50, right: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title,
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: desc,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: OnboardingPageBottomNavigationBar(
        onPressedFunctions: [tools, current, color, layers],
        barItems: [
          const BottomNavigationBarItem(
            label: 'Tools',
            icon: BottomBarIcon(asset: 'assets/svg/ic_tools.svg'),
          ),
          const BottomNavigationBarItem(
            label: 'Current',
            icon: BottomBarIcon(asset: 'assets/svg/ic_hand.svg'),
          ),
          BottomNavigationBarItem(
            label: 'Color',
            icon: Icon(
              Icons.check_box_outline_blank,
              size: 24,
              color: PaintroidTheme.of(context).onSurfaceColor,
            ),
          ),
          const BottomNavigationBarItem(
              label: 'Layers',
              icon: BottomBarIcon(asset: 'assets/svg/ic_layers.svg')),
        ],
      ),
    );
  }
}
