// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';

class IconSvg extends StatelessWidget {
  final String path;
  final double height;
  final double width;
  final Color? color;

  const IconSvg({
    super.key,
    required this.path,
    required this.height,
    required this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      color: color,
    );
  }
}
