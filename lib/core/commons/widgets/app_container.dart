import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  final double? height, width, radius;
  final Color? color;
  final Widget? child;
  final BoxBorder? border;
  final EdgeInsets? padding;

  final Gradient? lineGradient;

  const AppContainer({
    super.key,
    this.height = 60,
    this.radius = 20,
    this.width,
    this.color,
    this.child,
    this.border,
    this.padding,
    this.lineGradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        border: border,
        borderRadius: BorderRadius.circular(radius!),
        gradient: lineGradient,
      ),
      child: Center(child: child),
    );
  }
}
