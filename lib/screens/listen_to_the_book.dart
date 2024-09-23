import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/home_page.dart';
import 'package:readsphere_ieee/screens/select_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class ListenToTheBook extends StatelessWidget {
  const ListenToTheBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBarPage(() {}, "Listen to the book", () {}),
            Divider(
              color: AppColor.greyColor.withOpacity(.2),
              indent: 5.w,
              endIndent: 5.w,
            ),
            cardProgress(AssetImage(AppImages.bookImage), "Kareem Elsayed",
                "700", "", () {}, () {}),
            rowSection("description", "", false, () {}),
            cardText(
                "\"A Little Life\" by Hanya Yanagihara is a profound and expansive novel that follows the lives of four friends living in New York City. The story begins with their post-college years as they navigate their professional and personal paths. The four main characters are Jude, Willem, Malcolm, and JB.The novel focuses primarily on Jude, the most mysterious and complex of the group, revealing his traumatic past involving severe physical and emotional abuse. It explores themes of friendship, love, identity, and the lasting impact of psychological trauma.\"A Little Life\" is known for its emotional depth and intensity, touching on the complexities of healing from deep emotional scars and the strength of human connections."),
            SizedBox(
              height: 10.w,
            ),
            btnClick(AppColor.blackColor_4, AppColor.blackColor,
                AppColor.whiteColor, () {}, "Read Book", 90.w),
            SizedBox(
              height: 5.w,
            ),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "Listen To The Book", 90.w),
            SizedBox(
              height: 10.w,
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardText(data) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w),
    width: 90.w,
    child: Text(
      data,
      style: GoogleFonts.ibmPlexSans(
          fontSize: 4.w,
          height: 1.5,
          fontWeight: FontWeight.w300,
          color: AppColor.blackColor),
    ),
  );
}

Widget cardProgress(img, name, pages, rate, onPress, onSave) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 3.w, bottom: 3.w),
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    child: Row(
      children: [
        Container(
          width: 35.w,
          height: 25.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: onSave,
            child: Icon(
              Icons.bookmark_border,
              color: AppColor.greenColor,
              size: 8.w,
            ),
          ),
          SizedBox(
            width: 45.w,
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      "Name: ",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 4.w,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackColor),
                    ),
                    Text(
                      name,
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 3.w,
                          fontWeight: FontWeight.w400,
                          color: AppColor.blackColor_2),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              Text(
                "Numper of pages: ",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
              Text(
                pages,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 3.w,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor_2),
              ),
            ],
          ),
          SizedBox(
            height: 2.w,
          ),
          Row(
            children: [
              Text(
                "Rate: ",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                width: 30.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 5.w,
                    ),
                  ],
                ),
              )
            ],
          ),
        ]),
      ],
    ),
  );
}
