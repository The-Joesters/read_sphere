import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomLoginText extends StatelessWidget {
  const CustomLoginText({
    required this.text,
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 3.w),
        child: Text(
          text,
          style: TextStyle(color: const Color(0xff333333), fontSize: 4.w),
        ),
      ),
    );
  }
}
