import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/prefrences_screens.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';

import 'package:readsphere_ieee/widgets/custom_login_text.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});
  static String id = 'OtpScreen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final formKey = GlobalKey<FormState>();
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      progressIndicator: const CircularProgressIndicator(
        color: Colors.green,
      ),
      dismissible: true,
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(5.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.w),
                      child: CustomPrefrencesRow(
                          onpressed: () {
                            Get.back();
                          },
                          text: 'OTP Verification'),
                    ),
                    const CustomLoginText(
                      text:
                          "Please check your email alaa@gmail.com to see the verification code ",
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    OtpTextField(
                      numberOfFields: 4,
                      margin: EdgeInsets.only(right: 3.w, left: 3.w),
                      fieldWidth: 15.w,
                      fieldHeight: 8.h,
                      borderColor: AppColor.greenColor_2,
                      enabledBorderColor: AppColor.greenColor_2,
                      focusedBorderColor: primaryColor,
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("Verification Code"),
                                content:
                                    Text('Code entered is $verificationCode'),
                              );
                            });
                      }, // end onSubmit
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    CustomButton(
                      onpressed: () {
                        Get.offAll(() => const WelcomebackScreen());
                      },
                      buttonColor: primaryColor,
                      borderColor: primaryColor,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 4.w,
                          fontFamily: 'IBMPlexSans'),
                      buttonText: 'Verify',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
