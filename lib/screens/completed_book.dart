import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CompletedBook extends StatelessWidget {
  const CompletedBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          appBarPage(() {}, "completed books", () {}),
          SizedBox(
            height: 3.w,
          ),
          cardBook(
              AssetImage(AppImages.bookImage), "Lean In", "Sheryl Sandberg"),
          SizedBox(
            height: 3.w,
          ),
          cardBook(
              AssetImage(AppImages.bookImage), "The Lean Startup", "Eric Ries"),
          SizedBox(
            height: 3.w,
          ),
          cardBook(AssetImage(AppImages.bookImage),
              "The Art of Thinking Clearly", "Rolf Dobelli")
        ],
      ),
    );
  }
}

Widget cardBook(img, title, author) {
  return Container(
    width: 100.w,
    height: 18.h,
    padding: EdgeInsets.all(3.w),
    margin: EdgeInsets.only(right: 5.w, left: 5.w),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w), color: AppColor.whiteColor_1),
    child: Row(
      children: [
        Container(
          width: 20.w,
          height: 12.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
              height: 1.w,
            ),
            Text(
              author,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blueColor),
            )
          ],
        )
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
