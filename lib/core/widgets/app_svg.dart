import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  final String name;
  final Color? color;
  final double? width;
  final double? height;
  final BoxFit fit;

  const AppSvg({
    super.key,
    required this.name,
    this.color,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/$name.svg',
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
