import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    required this.icon,
    this.size = const Size(40, 90),
    this.iconColor, this.borderColor,
  });

  final IconData icon;
  final Size size;
  final Color? iconColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size.height,
      width: size.width,
      // padding: const EdgeInsets.fromLTRB(7, 18, 18, 18),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor ?? Colors.white, width: 1),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Icon(icon, color: iconColor ?? Colors.white, size: 15),
      ),
    );
  }
}
