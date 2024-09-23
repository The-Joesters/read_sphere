import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/otp_screen.dart';
import 'package:readsphere_ieee/screens/prefrences_screens.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/custom_login_button.dart';
import 'package:readsphere_ieee/widgets/custom_login_row.dart';
import 'package:readsphere_ieee/widgets/custom_divider.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CreateaccountScreen extends StatefulWidget {
  const CreateaccountScreen({super.key});
  static String id = 'CreateaccountScreen';

  @override
  State<CreateaccountScreen> createState() => _CreateaccountScreenState();
}

class _CreateaccountScreenState extends State<CreateaccountScreen> {
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
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: CustomPrefrencesRow(
                          onpressed: () {
                            Get.back();
                          },
                          text: "Create Account"),
                    ),
                    const CustomLoginText(
                      text: "User Name",
                    ),
                    CustomTextFormField(
                        inputType: TextInputType.name,
                        hintText: 'alaaahmed',
                        obscureText: false,
                        onChanged: (data) {},
                        width: 90.w,
                        height: 1.h,
                        controller: controller,
                        errorMessage: 'user name',
                        textStyle: TextStyle(
                            color: const Color(0xff666666),
                            fontSize: 4.w,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 1.h,
                    ),
                    const CustomLoginText(
                      text: "E-mail",
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
                    const CustomLoginText(
                      text: "Password",
                    ),
                    CustomTextFormField(
                        inputType: TextInputType.visiblePassword,
                        hintText: '************',
                        obscureText: false,
                        onChanged: (data) {},
                        width: 90.w,
                        height: 1.h,
                        controller: controller,
                        errorMessage: 'password ',
                        textStyle: TextStyle(
                            color: const Color(0xff666666),
                            fontSize: 4.w,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 1.h,
                    ),
                    const CustomLoginText(
                      text: "Confirm Password",
                    ),
                    CustomTextFormField(
                        inputType: TextInputType.visiblePassword,
                        hintText: '************',
                        obscureText: false,
                        onChanged: (data) {},
                        width: 90.w,
                        height: 1.h,
                        controller: controller,
                        errorMessage: 'confirmmed password',
                        textStyle: TextStyle(
                            color: const Color(0xff666666),
                            fontSize: 4.w,
                            fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 1.h,
                    ),
                    CustomButton(
                        onpressed: () {
                          if (formKey.currentState!.validate()) {
                            Get.to(() => PrefrencesScreens());
                          }
                        },
                        buttonColor: primaryColor,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 4.w,
                            fontFamily: 'IBMPlexSans'),
                        buttonText: 'Create Account',
                        borderColor: primaryColor),
                    const CustomDivider(),
                    CustomLogInButton(
                        onpressed: () {}, buttonText: 'Continue with google'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: CustomLoginRow(
                          questionText: 'Have an account?',
                          text: 'LogIn',
                          ontap: () {
                            Get.to(() => const WelcomebackScreen());
                          }),
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
