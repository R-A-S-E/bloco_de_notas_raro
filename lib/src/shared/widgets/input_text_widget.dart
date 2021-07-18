import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textInputType;
  final String hint;
  final double? fontsize;
  final FontWeight? fontweight;
  final String? Function(String? value) validator;
  final ValueChanged<String?>? onChanged;

  const InputTextWidget({
    Key? key,
    this.textInputType = TextInputType.text,
    this.controller,
    required this.hint,
    required this.validator,
    this.onChanged,
    this.fontsize,
    this.fontweight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          fontFamily: "Roboto",
          fontWeight: fontweight,
          fontSize: fontsize,
          letterSpacing: 0.15,
          color: Colors.black.withOpacity(0.54),
        ),
        labelStyle: TextStyle(
          fontFamily: "Roboto",
          fontWeight: fontweight,
          fontSize: fontsize,
          letterSpacing: 0.15,
          color: Colors.black.withOpacity(0.54),
        ),
        border: InputBorder.none,
        errorBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
      onChanged: onChanged,
      controller: controller,
    );
  }
}
