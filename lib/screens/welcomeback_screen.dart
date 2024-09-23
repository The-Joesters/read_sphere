import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/createaccount_screen.dart';
import 'package:readsphere_ieee/screens/forgetpass_screen.dart';
import 'package:readsphere_ieee/widgets/custom_divider.dart';
import 'package:readsphere_ieee/widgets/custom_login_button.dart';
import 'package:readsphere_ieee/widgets/custom_login_row.dart';
import 'package:readsphere_ieee/widgets/custom_login_text.dart';
import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class WelcomebackScreen extends StatefulWidget {
  const WelcomebackScreen({super.key});
  static String id = 'welcomback';

  @override
  State<WelcomebackScreen> createState() => _WelcomebackScreenState();
}

class _WelcomebackScreenState extends State<WelcomebackScreen> {
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
                padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
                child: Column(
                  children: [
                    CustomPrefrencesRow(
                        onpressed: () {
                          Get.back();
                        },
                        text: "Welcome Back!"),
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
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const ForgetpassScreen());
                        },
                        child: Text(
                          "Forget Password ?",
                          style: GoogleFonts.ibmPlexSans(color: primaryColor),
                        ),
                      ),
                    ),
                    CustomButton(
                        onpressed: () {
                          if (formKey.currentState!.validate()) {
                            isloading = true;
                            setState(() {});

                            isloading = false;
                            setState(() {});
                          }
                        },
                        buttonColor: primaryColor,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 4.w,
                            fontFamily: 'IBMPlexSans'),
                        buttonText: 'Log In',
                        borderColor: primaryColor),
                    const CustomDivider(),
                    CustomLogInButton(
                        onpressed: () {}, buttonText: 'Login with google'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.w),
                      child: CustomLoginRow(
                          questionText: 'Don\'t have an account?',
                          text: 'Sign Up',
                          ontap: () {
                            Get.to(() => const CreateaccountScreen());
                          }),
                    ),
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
