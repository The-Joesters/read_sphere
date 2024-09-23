import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/models/onboarding_screen_model.dart';
import 'package:readsphere_ieee/screens/createaccount_screen.dart';
import 'package:readsphere_ieee/screens/welcomeback_screen.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomOnboardingScreen extends StatefulWidget {
  const CustomOnboardingScreen(
      {required this.onBoargingScreenModel, super.key});
  static String id = "onboarding";
  final OnBoargingScreenModel? onBoargingScreenModel;

  @override
  State<CustomOnboardingScreen> createState() => _CustomOnboardingScreenState();
}

class _CustomOnboardingScreenState extends State<CustomOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            SizedBox(
              height: 13.h,
              width: 100.w,
              child: Column(
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      widget.onBoargingScreenModel!.text!,
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 6.w,
                          color: Colors.black,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Image(
              fit: BoxFit.fill,
              image: AssetImage(
                widget.onBoargingScreenModel!.image!,
              ),
              width: 80.w,
              height: 40.h,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomButton(
              onpressed: () {
                Get.to(() => const WelcomebackScreen());
                //welcome
              },
              buttonColor: primaryColor,
              textStyle:
                  GoogleFonts.ibmPlexSans(color: Colors.white, fontSize: 16.sp),
              borderColor: primaryColor,
              buttonText: "Log In ",
            ),
            SizedBox(
              height: 5.w,
            ),
            CustomButton(
              onpressed: () {
                Get.to(() => const CreateaccountScreen());

                //creat Account
              },
              buttonColor: AppColor.whiteColor,
              borderColor: primaryColor,
              textStyle:
                  GoogleFonts.ibmPlexSans(color: Colors.black, fontSize: 4.w),
              buttonText: 'Create Account ',
            ),
          ],
        ),
      ),
    );
  }
}
