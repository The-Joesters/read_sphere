import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomLogInButton extends StatelessWidget {
  const CustomLogInButton(
      {required this.onpressed, required this.buttonText, super.key});
  final VoidCallback? onpressed;

  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 6.h,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              side: const BorderSide(color: primaryColor),
              borderRadius: BorderRadius.circular(3.w),
            ),
          ),
          backgroundColor: const WidgetStatePropertyAll(secondaryColor),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Google.png'),
            SizedBox(
              width: 8.w,
            ),
            Text(
              buttonText!,
              style: TextStyle(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
