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
      backgroundColor: HexColor("#141414"),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                // begin: Alignment.topRight,
                // end: Alignment.bottomLeft,
                center: Alignment.topRight,
                stops: const [
                  -.3377,
                  0.521,
                ],
                radius: .9,
                colors: [
                  Colors.white.withOpacity(.3),
                  Colors.transparent,
                ],
              ),
            ),
          ),
          Opacity(
            opacity: .8,
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  // begin: Alignment.topRight,
                  // end: Alignment.bottomLeft,
                  center: Alignment.topRight,
                  stops: const [
                    -0.77,
                    -.3377,
                    0.5741,
                  ],
                  radius: .9,
                  colors: [
                    Colors.white,
                    HexColor(AppColors.primary).withOpacity(.3),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          Positioned(child: child),
        ],
      ),
    );
  }
}
