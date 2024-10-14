import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider(
      {super.key,
      this.useGradient = true,
      this.thickness = 1,
      this.height = 80, this.color});

  final bool useGradient;
  final double thickness;
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: thickness,
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        gradient: useGradient
            ? LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                    HexColor(AppColors.primary),
                    HexColor(AppColors.secondary),
                  ])
            : null,
      ),
    );
  }
}
