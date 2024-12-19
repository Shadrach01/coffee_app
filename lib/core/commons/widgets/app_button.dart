import 'package:coffee_app/core/commons/widgets/app_container.dart';
import 'package:coffee_app/core/utils/color_res.dart';
import 'package:flutter/material.dart';

/*

General app button

 */
class AppButton extends StatelessWidget {
  final double? height, width;
  final Color? color;
  final Widget child;
  final VoidCallback? onTap;
  final Gradient? lineGradient;

  const AppButton({
    super.key,
    this.height = 60,
    this.width,
    this.color = ColorRes.color1,
    required this.child,
    this.onTap,
    this.lineGradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AppContainer(
        height: height,
        width: width,
        color: color,
        child: Center(child: child),
      ),
    );
  }
}
