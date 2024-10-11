import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';
import 'package:myapp/core/helpers/hex_color.dart';

class CustomButton extends StatefulWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.onPressed,
      this.width,
      this.isOutlined,
      this.isPrimary = true});

  final String text;
  final Function? onPressed;
  final double? width;
  final bool? isOutlined;
  final bool isPrimary;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Widget _buildChild() {
    return Text(
      widget.text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: widget.isOutlined == true
                ? OvalBorder()
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
            backgroundBuilder: (context, state, child) => DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: const [
                        0.51,
                        1.4,
                      ],
                      colors: widget.isPrimary
                          ? [
                              HexColor(AppColors.primary),
                              HexColor(AppColors.secondary),
                            ]
                          : [
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).colorScheme.primary,
                            ],
                    ),
                  ),
                  child: child,
                )),
        onPressed: () {
          // Implement sign in logic
        },
        child: _buildChild(),
      ),
    );
  }
}
