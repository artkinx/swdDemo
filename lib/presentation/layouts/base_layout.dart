// Suggested code may be subject to a license. Learn more: ~LicenseLog:3279701789.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2987744714.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:823928960.

import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/helpers/hex_color.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(AppColors.scaffoldColor),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                // begin: Alignment.topRight,
                // end: Alignment.bottomLeft,
                center: Alignment.topRight,
                // stops: const [.3, .4, .6],
                radius: .9,
                colors: [
                  HexColor(AppColors.primary),
                  Colors.white.withOpacity(.2),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
