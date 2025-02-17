// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:paintroid/ui/theme/theme.dart';

class GenericDialogActionButton extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const GenericDialogActionButton(
      {super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) => TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            PaintroidTheme.of(context).primaryColor,
          ),
        ),
        onPressed: () => {
          if (onPressed != null) {onPressed!()}
        },
        child: Text(text),
      );
}

class GenericDialogAction {
  final Function? onPressed;
  final String title;

  const GenericDialogAction({Key? key, this.onPressed, required this.title});
}

class GenericDialog extends StatelessWidget {
  final String title;
  final String? text;
  final Widget? content;
  final List<GenericDialogAction> actions;

  const GenericDialog(
      {super.key,
      required this.title,
      this.text,
      this.content,
      required this.actions});

  Widget? getContent(BuildContext context) {
    if (content != null) {
      return content;
    }
    if (text != null) {
      return Text(
        text!,
        style: TextStyle(
          color: PaintroidTheme.of(context).shadowColor,
        ),
      );
    }
    return null;
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
        backgroundColor: PaintroidTheme.of(context).onSurfaceColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
        title: Text(
          title,
          style: TextStyle(color: PaintroidTheme.of(context).shadowColor),
        ),
        actions: actions
            .map((action) => GenericDialogActionButton(
                  text: action.title,
                  onPressed: action.onPressed,
                ))
            .toList(),
        content: getContent(context),
      );
}
