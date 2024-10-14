import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GradientTextWidget extends StatefulWidget {
  const GradientTextWidget(this.text,
      {super.key,
      this.gradientType = GradientType.radial,
      this.stops,
      required this.colors,
      this.style});
  final GradientType gradientType;
  final List<double>? stops;
  final String text;
  final List<Color> colors;
  final TextStyle? style;

  @override
  State<GradientTextWidget> createState() => _GradientTextWidgetState();
}

class _GradientTextWidgetState extends State<GradientTextWidget> {
  @override
  Widget build(BuildContext context) {
    return GradientText(
      widget.text,
      gradientType: widget.gradientType,
      colors: widget.colors,
      stops: widget.stops,
      style: widget.style ?? Theme.of(context).textTheme.bodySmall,
    );
  }
}
