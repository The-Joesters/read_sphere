import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constant/constants.dart';

import 'package:readsphere_ieee/widgets/customtextfield.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/custom_prefrencesscreens_text.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class PrefrencePage1 extends StatefulWidget {
  const PrefrencePage1({super.key});
  static String id = "PrefrencePage1";

  @override
  State<PrefrencePage1> createState() => _PrefrencePage1State();
}

class _PrefrencePage1State extends State<PrefrencePage1> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController ageController = TextEditingController();
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          CustomPrefrencesRow(
            onpressed: () {
              Get.back();
            },
            text: 'about you',
          ),
          const CustomPrefrencesQuestionText(
            text: "select your gender",
          ),
          SizedBox(width: 20.w),
          Column(
            children: [
              CustomButton(
                onpressed: () {
                  selectedGender = "Male";
                  setState(() {});
                },
                borderColor: (selectedGender == 'Male')
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor:
                    (selectedGender == 'Male') ? primaryColor : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedGender == 'Male')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 4.w),
                buttonText: "Male",
              ),
              SizedBox(
                height: 2.h,
              ),
              CustomButton(
                onpressed: () {
                  selectedGender = "Female";
                  setState(() {});
                },
                borderColor: (selectedGender == 'Female')
                    ? primaryColor
                    : const Color(0xff666666),
                buttonColor: (selectedGender == 'Female')
                    ? primaryColor
                    : secondaryColor,
                textStyle: TextStyle(
                    color: (selectedGender == 'Male')
                        ? Colors.white
                        : const Color(0xff333333),
                    fontFamily: 'IBMPlexSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 4.w),
                buttonText: "Female",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(5.w),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("enter your age",
                  style: TextStyle(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSans')),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: CustomTextFormField(
              controller: ageController,
              width: 90.w,
              height: 1.h,
              obscureText: false,
              hintText: "  ",
              textStyle: TextStyle(
                  fontFamily: 'IBMPlexSans',
                  fontSize: 4.w,
                  fontWeight: FontWeight.w400),
              errorMessage: "Please Enter your age",
              inputType: TextInputType.number,
              onChanged: (da) {},
            ),
          ),
          const Spacer(flex: 2),
          CustomButton(
              onpressed: () {},
              buttonColor: primaryColor,
              textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 4.w,
                  fontFamily: 'IBMPlexSans'),
              buttonText: 'Continue',
              borderColor: primaryColor),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
