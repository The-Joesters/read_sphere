import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/my_achievment.dart';
import 'package:readsphere_ieee/screens/select_book.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class Challenge extends StatelessWidget {
  const Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5.h),
              width: 100.w,
              alignment: Alignment.center,
              child: Text(
                "challenge",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 6.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_2),
              ),
            ),
            Divider(
                color: AppColor.greyColor.withOpacity(.2),
                endIndent: 5.w,
                indent: 5.w),
            rowSectionWithSubtitle("My achievement", "subTitle", false),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, bottom: 3.w, top: 2.w),
              width: 100.w,
              height: 10.h,
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => cardPage(
                      AssetImage(AppImages.achieveImage), "cover to cover"),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 2.w,
                      ),
                  itemCount: 5),
            ),
            rowSectionWithSubtitle(
                "Reading Challenge Stats", "Track your progress", true),
            cardChallenge(10, () {
              //onPress
            }, () {
              //onPressCountinue
            }, .2),

            rowSectionWithSubtitle("Daily quiz", "Author Name", true),
            cardDailyQuiz(AssetImage(AppImages.bookImage), "Chapter 1", "30",
                "15 minutes", AssetImage(AppImages.userImage), "John Stubbs"),
            Divider(
                color: AppColor.greyColor.withOpacity(.4),
                endIndent: 5.w,
                indent: 5.w),
            SizedBox(
              height: 3.w,
            ),
            Center(
              child: btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                  AppColor.greenColor_2, () {}, "Start Quiz", 90.w),
            ),
            SizedBox(
              height: 3.w,
            ),
            Center(
              child: btnClick(AppColor.blackColor_3, AppColor.blackColor_3,
                  AppColor.whiteColor, () {}, "Share", 90.w),
            ),
            rowSectionWithSubtitle(
                "Community Discussions", "Join the conversation", true),

            //card
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w),
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardCommunity(
                      AssetImage(AppImages.bookImage),
                      "Just completed my daily challenge!",
                      "#readingchallenge",
                      "BookLover456",
                      AssetImage(AppImages.userImage)),
                  cardCommunity(
                      AssetImage(AppImages.congratsImage),
                      "Excited to start a new challenge!",
                      "#readingcommunity",
                      "mohamed13",
                      AssetImage(AppImages.userImage))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardDailyQuiz(img, title, numOfQuiz, time, imgUser, authorName) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 2.w, top: 2.w),
    child: Row(
      children: [
        Container(
          width: 25.w,
          height: 27.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
            SizedBox(
              height: 2.w,
            ),
            Text(
              "Number of questions: $numOfQuiz questions",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor_3),
            ),
            SizedBox(
              height: 2.w,
            ),
            Text(
              "Time: $time",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor_3),
            ),
            SizedBox(
              height: 2.w,
            ),
            Row(
              children: [
                Container(
                  width: 6.w,
                  height: 6.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: imgUser, fit: BoxFit.fill),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Author Name: $authorName",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 3.5.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor_3),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}

Widget cardCommunity(img, body, title, authorName, imgUser) {
  return Container(
    height: 33.h,
    width: 43.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(3.w),
      border: Border.all(color: AppColor.greyColor),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 43.w,
          height: 20.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.w),
                  topRight: Radius.circular(3.w)),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 2.w,
        ),
        Container(
          margin: EdgeInsets.only(right: 2.w, left: 2.w, bottom: 2.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                body,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_3),
              ),
              SizedBox(
                width: 1.w,
              ),
              Text(
                title,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_3),
              ),
              SizedBox(
                width: 3.w,
              ),
              Row(
                children: [
                  Container(
                    width: 6.w,
                    height: 6.w,
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: imgUser, fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    authorName,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 4.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor_2),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget cardChallenge(numBooks, onPress, onPressCountinue, percentage) {
  return Container(
    padding: EdgeInsets.all(2.w),
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 2.w, bottom: 2.w),
    decoration: BoxDecoration(
        color: AppColor.greenColor_2, borderRadius: BorderRadius.circular(3.w)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 2.w),
          width: 30.w,
          height: 35.w,
          child: CircularPercentIndicator(
            backgroundColor: AppColor.whiteColor_1,
            radius: 15.w,
            lineWidth: 4.w,
            percent: percentage, // القيمة هنا كنسبة
            center: Icon(
              Icons.rocket_launch_outlined,
              color: AppColor.greenColor,
              size: 10.w,
            ),
            progressColor: AppColor.greenColor,

            // اللون بناءً على النسبة
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 35.w,
                  child: Text(
                    "Books Comleted this month",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 4.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.whiteColor_1),
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  "$numBooks",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 6.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.whiteColor_1),
                ),
              ],
            ),
            SizedBox(
              height: 5.w,
            ),
            SizedBox(
              width: 40.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: onPress,
                    child: Text(
                      "View books",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 2.5.w,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.whiteColor_1,
                          fontWeight: FontWeight.w400,
                          color: AppColor.whiteColor_1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            Text(
              "You're on fire, keep it up!",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.w,
                  fontWeight: FontWeight.w400,
                  color: AppColor.whiteColor_1),
            ),
            SizedBox(
              height: 2.w,
            ),
            btnClick(AppColor.greenColor_3, AppColor.whiteColor_1,
                AppColor.greenColor_3, onPressCountinue, "countinue read", 45.w)
          ],
        )
      ],
    ),
  );
}

Widget rowSectionWithSubtitle(title, subTitle, show) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 2.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w400,
              color: AppColor.blackColor_2),
        ),
        SizedBox(
          height: 1.w,
        ),
        if (show == true)
          Text(
            subTitle,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 4.w,
                fontWeight: FontWeight.w400,
                color: AppColor.blackColor_2),
          ),
      ],
    ),
  );
}
