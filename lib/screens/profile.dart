import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarprofile(AssetImage(AppImages.avatarSmallImage), "12"),
            infoUser("kareem2003", () {}, 5, 300),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w),
              child: Text(
                "Reading Statistics",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w, top: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardReading(
                      true, "Total Books Read", "50", "+10 from last month"),
                  cardReading(false, "Favourite Genre", "Mystery", ""),
                ],
              ),
            ),
            appBarSection("30", () {}),
            Center(
              child: SizedBox(
                width: 90.w,
                height: 32.h,
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => caedCompletedBook(
                        AssetImage(AppImages.completedBookImage),
                        "and then..",
                        "Genre:Fiction"),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 4.w,
                        ),
                    itemCount: 3),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 2.w),
              child: Text(
                "Recently Read",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            cardBook(
                AssetImage(AppImages.bookImage),
                "Chapter 4",
                "about: kndsbvjbsBb dnbjds jbsdjbfv ",
                "james franco",
                "40 min",
                AssetImage(AppImages.userImage),
                () {}),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 2.w),
              child: Text(
                "Character Inventory",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            Container(
              width: 90.w,
              height: 10.h,
              margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 2.w),
              child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => cardCharecter("Level", "5"),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 4.w,
                      ),
                  itemCount: 3),
            ),
            btnClick(AppColor.blackColor_3, AppColor.blackColor_2,
                AppColor.whiteColor, () {}, "Upgrade Character"),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "Purchase Items"),
            SizedBox(
              height: 10.w,
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardCharecter(title, body) {
  return Container(
    width: 43.w,
    height: 10.h,
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.greyColor),
        ),
        SizedBox(
          height: 3.w,
        ),
        Text(
          body,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      ],
    ),
  );
}

Widget cardBook(img, title, body, anotherTitle, time, imgAuthor, onPress) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w), color: AppColor.whiteColor_1),
    padding: EdgeInsets.all(2.w),
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 3.w),
    child: Row(
      children: [
        Container(
          width: 25.w,
          height: 17.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        SizedBox(
          height: 17.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 50.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 5.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackColor),
                    ),
                    InkWell(
                      onTap: onPress,
                      child: Text(
                        "countinue",
                        style: GoogleFonts.ibmPlexSans(
                            fontSize: 4.w,
                            fontWeight: FontWeight.w500,
                            color: AppColor.greenColor_2),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.w,
              ),
              Row(
                children: [
                  Container(
                    width: 8.w,
                    height: 8.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3.w),
                        image: DecorationImage(
                            image: imgAuthor, fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    anotherTitle,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 3.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor),
                  ),
                ],
              ),
              SizedBox(
                height: 1.w,
              ),
              SizedBox(
                width: 55.w,
                child: Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  body,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor_2),
                ),
              ),
              SizedBox(
                height: 1.w,
              ),
              Text(
                time,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 3.5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.greyColor),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget caedCompletedBook(img, title, body) {
  return Container(
    padding: EdgeInsets.all(2.w),
    // margin: EdgeInsets.only(right: 5.w, left: 5.w),
    width: 45.w,
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    child: Column(
      children: [
        Container(
          width: 35.w,
          height: 23.h,
          decoration: BoxDecoration(
              image: DecorationImage(image: img, fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(3.w)),
        ),
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.w,
              fontWeight: FontWeight.normal,
              color: AppColor.blackColor_2),
        ),
        Text(
          body,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      ],
    ),
  );
}

Widget appBarSection(number, onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 3.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Completed Books",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
            SizedBox(
              width: 1.w,
            ),
            Text(
              number,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.greyColor),
            ),
          ],
        ),
        InkWell(
          onTap: onPress,
          child: Text(
            "See all",
            style: GoogleFonts.ibmPlexSans(
                fontSize: 4.5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor),
          ),
        ),
      ],
    ),
  );
}

Widget cardReading(thirdText, title, body, text) {
  return Container(
    width: 43.w,
    height: 12.h,
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w), color: AppColor.whiteColor_1),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.w,
              fontWeight: FontWeight.w500,
              color: AppColor.greenColor_2),
        ),
        SizedBox(
          height: 2.w,
        ),
        Text(
          body,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.5.w,
              fontWeight: FontWeight.normal,
              color: AppColor.blackColor),
        ),
        SizedBox(
          height: 1.w,
        ),
        if (thirdText == true)
          Text(
            text,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.w,
                fontWeight: FontWeight.w400,
                color: AppColor.blackColor),
          ),
      ],
    ),
  );
}

Widget infoUser(name, onPress, level, points) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 7.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
            InkWell(
              onTap: onPress,
              child: Row(
                children: [
                  Text(
                    "edit profile",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 3.5.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.greenColor_2),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Icon(
                    Icons.mode_edit_outline_outlined,
                    color: AppColor.greenColor_2,
                    size: 4.w,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 1.w,
        ),
        Text(
          "Level: $level, Experience Points: $points",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.greyColor),
        )
      ],
    ),
  );
}

Widget appBarprofile(img, number) {
  return Container(
    width: 100.w,
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 1.w, top: 5.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        Container(
          padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              color: AppColor.greenColor_2),
          child: Row(
            children: [
              Icon(
                Icons.whatshot,
                color: AppColor.fireColor,
              ),
              Text(
                number,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.whiteColor_1),
              )
            ],
          ),
        )
      ],
    ),
  );
}
