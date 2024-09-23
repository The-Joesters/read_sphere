import 'package:flutter/material.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomPrefrencesRow extends StatelessWidget {
  const CustomPrefrencesRow({
    required this.onpressed,
    required this.text,
    super.key,
  });
  final VoidCallback? onpressed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onpressed, icon: const Icon(Icons.arrow_back)),
        const Spacer(
          flex: 1,
        ),
        Text(
          textAlign: TextAlign.center,
          text!,
          style: TextStyle(
              fontSize: 6.w,
              fontWeight: FontWeight.w500,
              fontFamily: 'IBMPlexSans'),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
