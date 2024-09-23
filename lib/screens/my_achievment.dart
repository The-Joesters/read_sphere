import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class MyAchievment extends StatelessWidget {
  const MyAchievment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarPage(() {}, "My achievement", () {}),
            Divider(
              color: AppColor.greyColor,
              endIndent: 5.w,
              indent: 5.w,
              thickness: .2,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 5.w,
                left: 5.w,
                top: 5.w,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 3.w,
                    crossAxisSpacing: 3.w,
                    crossAxisCount: 4),
                itemBuilder: (context, index) => cardPage(
                    AssetImage(AppImages.achieveImage), "star shooter"),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, top: 6.w, bottom: 3.w),
              child: Text(
                "premium",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 5.w,
                left: 5.w,
                top: 5.w,
              ),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 3.w,
                    crossAxisSpacing: 3.w,
                    crossAxisCount: 4),
                itemBuilder: (context, index) => cardPage(
                    AssetImage(AppImages.achieveImage), "star shooter"),
              ),
            ),
            Container(
              width: 100.w,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  right: 5.w, left: 5.w, top: 15.h, bottom: 3.w),
              child: Text(
                "get premium to unlock more achievements",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "Go Premium")
          ],
        ),
      ),
    );
  }
}

Widget cardPage(image, text) {
  return Container(
    width: 25.w,
    height: 30.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.w), color: AppColor.whiteColor_1),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: image, fit: BoxFit.fill)),
        ),
        Text(
          text,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      ],
    ),
  );
}

Widget appBarPage(onPressBack, title, onPressShare) {
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
        IconButton(
            onPressed: onPressShare,
            icon: Icon(
              Icons.share,
              size: 7.w,
              color: AppColor.blackColor,
            )),
      ],
    ),
  );
}
