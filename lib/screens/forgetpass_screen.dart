import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/otp_screen.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class ForgetpassScreen extends StatefulWidget {
  const ForgetpassScreen({super.key});
  static String id = 'ForgetpassScreen';

  @override
  State<ForgetpassScreen> createState() => _ForgetpassScreenState();
}

class _ForgetpassScreenState extends State<ForgetpassScreen> {
  final formKey = GlobalKey<FormState>();
  bool isloading = false;

  final TextEditingController controller = TextEditingController();

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
                          text: 'Forgot password'),
                    ),
                    const CustomLoginText(
                      text:
                          "Enter your email or number to reset  your password",
                    ),
                    CustomTextFormField(
                        inputType: TextInputType.emailAddress,
                        hintText: 'alaaahmed@gmail.com',
                        obscureText: false,
                        onChanged: (data) {},
                        width: 90.w,
                        height: 1.h,
                        controller: controller,
                        errorMessage: 'E-mail',
                        textStyle: TextStyle(
                            color: const Color(0xff666666),
                            fontSize: 4.w,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 1.h,
                    ),
                    CustomButton(
                      onpressed: () {
                        Get.to(() => const OtpScreen());
                      },
                      buttonColor: primaryColor,
                      borderColor: primaryColor,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 4.w,
                          fontFamily: 'IBMPlexSans'),
                      buttonText: 'Reset Password',
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
