import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';

import '../../core/helpers/hex_color.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.obscureText = false});

  final String hintText;
  final String labelText;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  var _obscureText = false;
  IconData _icon = Icons.visibility;

  @override
  void initState() {
    _obscureText = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          obscureText: _obscureText,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: HexColor(AppColors.hinttextColor),
            ),
            suffixIcon: widget.obscureText
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                        _icon = _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off;
                      });
                    },
                    child: Icon(
                      _icon,
                      color: HexColor(AppColors.hinttextColor),
                    ),
                  )
                : null,
            filled: true,
            fillColor: HexColor("#292929"),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: HexColor("#515151"),
                width: 1,
              ),
              // borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
