import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constant/constants.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/customcheckbox_list.dart';

import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class PrefrencesPage4 extends StatefulWidget {
  PrefrencesPage4({super.key});
  static String id = "PrefrencesPage4";

  @override
  State<PrefrencesPage4> createState() => _PrefrencesPage4State();
}

class _PrefrencesPage4State extends State<PrefrencesPage4> {
  List<bool> isCheckedPage4 = List.generate(5, (index) => false);

  final List<String> page4Texts = [
    'after morning coffee',
    'while commuting',
    'during my lunch break',
    'before going to sleep',
    'any spare time',
  ];
  List<String>? selectedAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        children: [
          CustomPrefrencesRow(
            onpressed: () {
              Get.back();
            },
            text: 'when do you like to find\n out new ideas?',
          ),
          CustomcheckboxList(
            isChecked: isCheckedPage4,
            texts: page4Texts,
            onSelectedOptionsChanged: (p0) {
              setState(() {
                selectedAnswers = p0;
              });
            },
          ),
          Image.asset(
            'assets/images/newideaimage.png',
            height: 25.h,
            width: 70.w,
          ),
          Container(
            margin: EdgeInsets.only(right: 5.w, left: 5.w),
            child: CustomButton(
                onpressed: () {
                  print(selectedAnswers);
                },
                buttonColor: primaryColor,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 4.w,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Continue',
                borderColor: primaryColor),
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
