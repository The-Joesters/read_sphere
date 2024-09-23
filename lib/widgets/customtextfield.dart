import 'package:flutter/material.dart';

import 'package:readsphere_ieee/constant/constants.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {required this.inputType,
      required this.hintText,
      required this.obscureText,
      required this.onChanged,
      required this.width,
      required this.height,
      required this.controller,
      required this.errorMessage,
      required this.textStyle,
      super.key});
  static String id = "CustomTextFormField";
  final TextInputType? inputType;
  final String? hintText;
  final bool? obscureText;
  final Function(String)? onChanged;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  final String? errorMessage;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.w,
      height: height!.h,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        onChanged: onChanged,
        obscureText: obscureText!,
        keyboardType: inputType,
        decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: const BorderSide(color: primaryColor, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: const BorderSide(color: Color(0xff666666), width: 1),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: const BorderSide(color: Color(0xff666666), width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: const BorderSide(color: Color(0xff666666), width: 1),
          ),
          hintText: hintText,
          hintStyle: textStyle,
          contentPadding: EdgeInsets.all(3.w),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please Enter the $errorMessage';
          }
          return null;
        },
      ),
    );
  }
}
