// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:workspace_screen/workspace_screen.dart';

class TopAppBar extends AppBar {
  TopAppBar({Key? key, required String title})
      : super(
          key: key,
          title: Text(title),
          centerTitle: false,
          actions: [const OverflowMenu()],
        );
}
