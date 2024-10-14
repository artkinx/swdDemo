import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/hex_color.dart';

import '../../core/constants/app_colors.dart';

class CustomOtpPinFieldWidget extends StatefulWidget {
  const CustomOtpPinFieldWidget(
      {super.key,
      required this.autoFocus,
      required this.maxLength,
      required this.onSubmit,
      required this.onChange,
      required this.dividerPosition});

  final bool autoFocus;
  final int maxLength;
  final Function(String) onSubmit;
  final Function(String) onChange;
  final int dividerPosition;

  @override
  State<CustomOtpPinFieldWidget> createState() =>
      _CustomOtpPinFieldWidgetState();
}

class _CustomOtpPinFieldWidgetState extends State<CustomOtpPinFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(widget.maxLength, (index) {
        return Row(
          children: [
            if (index == widget.dividerPosition)
              Center(
                  child: Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * .04,
                          top: 15),
                      height: 1,
                      width: 10,
                      color: Colors.white)),
            Container(
              width: 41,
              height: 50,
              margin: EdgeInsets.only(
                  left: index > 0 ? MediaQuery.sizeOf(context).width * .04 : 0,
                  top: 19),
              child: TextField(
                autofocus: widget.autoFocus,
                maxLength: 1,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  widget.onChange(value);
                  if (value.length == 1 && index < widget.maxLength - 1) {
                    FocusScope.of(context).nextFocus();
                  }
                  if (value.length == 1 && index == widget.maxLength - 1) {
                    widget.onSubmit(value);
                  }
                },
                decoration: InputDecoration(
                  counterText: '',
                  filled: true,
                  fillColor: HexColor(AppColors.filledTextFieldColor),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: HexColor(AppColors.textFieldBorderColor),
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: HexColor(AppColors.textFieldBorderColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
