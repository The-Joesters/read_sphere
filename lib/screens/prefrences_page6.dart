import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/screens/congrats_screen.dart';
import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';
import 'package:readsphere_ieee/widgets/customcheckbox_list.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class PrefrencesPage6 extends StatefulWidget {
  PrefrencesPage6({super.key});

  @override
  State<PrefrencesPage6> createState() => _PrefrencesPage6State();
}

class _PrefrencesPage6State extends State<PrefrencesPage6> {
  List<bool> isCheckedPage6 = List.generate(9, (index) => false);

  final List<String> page6Texts = [
    'Fiction',
    'Mystery',
    'Science Fiction (Sci-Fi)',
    'Fantasy',
    'History',
    'Biography',
    'Poetry',
    'Drama',
    'Adventure'
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
            text: 'Choose the types of\n books you prefer',
          ),
          CustomcheckboxList(
            isChecked: isCheckedPage6,
            texts: page6Texts,
            onSelectedOptionsChanged: (p0) {
              setState(() {
                selectedAnswers = p0;
              });
            },
          ),
          const Spacer(flex: 1),
          Container(
            margin: EdgeInsets.only(right: 5.w, left: 5.w),
            child: CustomButton(
                onpressed: () {
                  Get.to(() => const PreferencesCongratsScreen());
                },
                buttonColor: primaryColor,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 4.w,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Finish',
                borderColor: primaryColor),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
