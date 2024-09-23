import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class Win extends StatelessWidget {
  const Win({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          appBarPage(() {}, "Congrats", () {}),
          Divider(
            endIndent: 5.w,
            indent: 5.w,
            color: AppColor.greyColor.withOpacity(.2),
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            AppImages.congratsImage,
            width: 70.w,
            height: 25.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 10.w,
          ),
          SizedBox(
            width: 80.w,
            child: Text(
              textAlign: TextAlign.center,
              "you scored 19 points keep going",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          btnClick(
              AppColor.blackColor_3,
              AppColor.blackColor_2,
              AppColor.whiteColor,
              () {},
              "view points added to your character"),
          btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
              AppColor.greenColor_2, () {}, "skip")
        ],
      ),
    );
  }
}
