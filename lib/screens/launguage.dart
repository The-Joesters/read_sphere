import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class Launguage extends StatelessWidget {
  const Launguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBarPage(() {}, "app language"),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .2,
          ),
          Container(
            margin:
                EdgeInsets.only(right: 5.w, left: 5.w, top: 10.w, bottom: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 6.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
                Text(
                  "selected",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: 1,
          ),
          Container(
            margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Arabic",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 6.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
                Text(
                  "selected",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
              ],
            ),
          ),
          btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
              AppColor.greenColor_2, () {}, "change")
        ],
      ),
    );
  }
}
Widget appBarPage(onPressBack, title) {
  return Container(
    width: 100.w,
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: onPressBack,
            icon: Icon(
              Icons.arrow_back,
              size: 7.w,
              color: AppColor.blackColor,
            )),
//SizedBox(width: 11.w),
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.2.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      SizedBox()
      ],
    ),
  );
}
