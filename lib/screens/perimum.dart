import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class Perimum extends StatelessWidget {
  const Perimum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 100.w,
              height: 12.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        width: 20.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.w),
                            image: DecorationImage(
                                image: AssetImage(
                                  AppImages.bookImage,
                                ),
                                fit: BoxFit.fill)),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 2.w,
                      ),
                  itemCount: 10),
            ),
            SizedBox(
              height: 2.w,
            ),
            SizedBox(
              width: 100.w,
              height: 12.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                        width: 20.w,
                        height: 12.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.w),
                            image: DecorationImage(
                                image: AssetImage(
                                  AppImages.bookImage,
                                ),
                                fit: BoxFit.fill)),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 2.w,
                      ),
                  itemCount: 10),
            ),
            SizedBox(
              height: 10.w,
            ),
            textWithIcon(
                "Unlimited access to 30,000+ books", Icons.all_inclusive),
            textWithIcon("Read & listen anytime, anywhere", Icons.music_video),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  cardPrimum("Save 67%", "Yearly", "500 Egp",
                      AppColor.greenColor_2, "Egp183.25 / Month"),
                  cardPrimum("Best Seller", "Monthly", "199.0 Egp",
                      AppColor.greenColor, "Egp399.25 / Month")
                ],
              ),
            ),
            SizedBox(
              height: 5.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.security,
                  size: 4.w,
                  color: AppColor.greenColor_2,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Text(
                  "Secured with App Store",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 3.5.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.greenColor_2),
                ),
              ],
            ),
            SizedBox(
              height: 15.w,
            ),
            Divider(
              color: AppColor.greyColor.withOpacity(.4),
              indent: 5.w,
              endIndent: 5.w,
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Privacy Policy",
                    style: GoogleFonts.ibmPlexSans(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.greyColor,
                        fontSize: 4.w,
                        fontWeight: FontWeight.normal,
                        color: AppColor.greyColor),
                  ),
                  Text(
                    "Terms & Conditions",
                    style: GoogleFonts.ibmPlexSans(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.greyColor,
                        fontSize: 4.w,
                        fontWeight: FontWeight.normal,
                        color: AppColor.greyColor),
                  ),
                  Text(
                    "Restore",
                    style: GoogleFonts.ibmPlexSans(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColor.greyColor,
                        fontSize: 4.w,
                        fontWeight: FontWeight.normal,
                        color: AppColor.greyColor),
                  ),
                ],
              ),
            ),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "Continue")
          ],
        ),
      ),
    );
  }
}

Widget cardPrimum(title, body, price, color, time) {
  return Container(
    width: 40.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.w),
        border: Border.all(color: color)),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(2.w),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.w), topRight: Radius.circular(4.w)),
            color: color,
          ),
          child: Text(
            title,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 5.w,
                fontWeight: FontWeight.w500,
                color: AppColor.whiteColor_1),
          ),
        ),
        SizedBox(
          height: 3.w,
        ),
        Text(
          body,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          height: 3.w,
        ),
        Text(
          price,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.greenColor_2),
        ),
        SizedBox(
          height: 3.w,
        ),
        Text(
          time,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.5.w,
              fontWeight: FontWeight.normal,
              color: AppColor.greyColor),
        ),
        SizedBox(
          height: 3.w,
        ),
      ],
    ),
  );
}

Widget textWithIcon(text, icon) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w),
    child: Row(
      children: [
        Icon(
          icon,
          color: AppColor.greenColor_2,
          size: 5.w,
        ),
        SizedBox(
          width: 2.w,
        ),
        Text(
          text,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 4.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      ],
    ),
  );
}
