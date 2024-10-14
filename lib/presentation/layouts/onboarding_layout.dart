import 'package:flutter/material.dart';
import 'package:myapp/presentation/layouts/base_layout.dart';

class OnboardingLayout extends StatefulWidget {
  const OnboardingLayout({
    super.key,
    required this.child,
    this.showBackButton = false,
    this.title,
    this.titleWidget,
    this.topHeightScale = .08,
    this.heightScale = .92,
  });

  final Widget child;
  final bool showBackButton;
  final String? title;
  final Widget? titleWidget;
  final double topHeightScale;
  final double heightScale;

  @override
  State<OnboardingLayout> createState() => _OnboardingLayoutState();
}

class _OnboardingLayoutState extends State<OnboardingLayout> {
  Widget _buildTitle() {
    return widget.title != null
        ? Text(widget.title ?? "",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white))
        : widget.titleWidget ?? const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BaseLayout(
            heightScale: widget.heightScale,
            topHeightScale: widget.topHeightScale,
            child: widget.child),
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: widget.showBackButton,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              _buildTitle(),
            ],
          ),
        ),
      ],
    );
  }
}
