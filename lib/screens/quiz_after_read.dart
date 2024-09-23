import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class QuizAfterRead extends StatelessWidget {
  const QuizAfterRead({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarPage(() {}, () {}, () {}),
            questionAndAnswer(
                1,
                "What is the main theme of \"The Great Gatsby\"?",
                "The American Dream",
                "War and Peace",
                "Alien Invasion",
                "Time Travel"),
            questionAndAnswer(
                2,
                "What is the main theme of \"The Great Gatsby\"?",
                "The American Dream",
                "War and Peace",
                "Alien Invasion",
                "Time Travel"),
            questionAndAnswer(
                3,
                "What is the main theme of \"The Great Gatsby\"?",
                "The American Dream",
                "War and Peace",
                "Alien Invasion",
                "Time Travel"),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "Play"),
            SizedBox(
              height: 10.w,
            ),
          ],
        ),
      ),
    );
  }
}

Widget appBarPage(onPressShare, onPressDowenLoad, onPressSave) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
        height: 30.h,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 30.w,
                ),
                SizedBox(
                  width: 30.w,
                  child: Text(
                    "WHITE LF",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 6.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.w,
            ),
            SizedBox(
              width: 60.w,
              child: Text(
                "Each question is followed by four answer options.You can include a \"Submit\" button at the bottom of the quiz, along with optional features like showing the correct answer after submission or awarding points based on the user's performance.",
                style: GoogleFonts.ibmPlexSans(
                    height: 2,
                    fontSize: 3.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        width: 10.w,
      ),
      SizedBox(
        height: 25.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //  margin: EdgeInsets.only(top: 12.w),
              alignment: Alignment.centerRight,
              width: 20.w,
              child: icons(() {}, () {}, () {}),
            ),
          ],
        ),
      )
    ],
  );
}

Widget questionAndAnswer(
    numQuiz, question, answer_1, answer_2, answer_3, answer_4) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Question  $numQuiz",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor)),
        SizedBox(height: 1.w),
        Text(question,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor)),
        SizedBox(height: 1.w),
        Text(" A) $answer_1",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor)),
        SizedBox(height: 1.w),
        Text(" B) $answer_2",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor)),
        SizedBox(height: 1.w),
        Text(" C) $answer_3",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor)),
        SizedBox(height: 1.w),
        Text(" D) $answer_4",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor))
      ],
    ),
  );
}
