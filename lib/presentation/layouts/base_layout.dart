// Suggested code may be subject to a license. Learn more: ~LicenseLog:3279701789.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2987744714.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:823928960.

import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/helpers/hex_color.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    super.key,
    required this.child,
    this.heightScale = .4,
    this.topHeightScale = 0,
  });

  final Widget child;
  final double heightScale;
  final double topHeightScale;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: HexColor("#141414"),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  // begin: Alignment.topRight,
                  // end: Alignment.bottomLeft,
                  center: Alignment.topRight,
                  stops: const [
                    -1.3377,
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
              opacity: .5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    // begin: Alignment.topRight,
                    // end: Alignment.bottomLeft,
                    center: Alignment.topRight,
                    stops: const [
                      -0.77,
                      .3677,
                      1.5741,
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
            Positioned(
                top: MediaQuery.sizeOf(context).height * topHeightScale,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * heightScale,
                  child: child,
                )),
          ],
        ),
      ),
    );
  }
}
