import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class AydioBook extends StatelessWidget {
  const AydioBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      appBarPage(() {}, "Audio Summary Playback", () {}),
                      Container(
                        margin: EdgeInsets.only(right: 5.w, left: 5.w),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 70.w,
                              child: Text(
                                "Audio Summary",
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 5.w,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.blackColor),
                              ),
                            ),
                            SizedBox(
                              width: 70.w,
                              child: Text(
                                "Book Title",
                                style: GoogleFonts.ibmPlexSans(
                                    fontSize: 3.5.w,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.blackColor_4),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            cardBook(
                AssetImage(AppImages.bookImage),
                "Chapter 1",
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                "anotherTitle"),
            Divider(
              indent: 5.w,
              endIndent: 5.w,
              thickness: 1.5,
              color: AppColor.blackColor,
            ),
            SizedBox(
              height: 5.w,
            ),
            cardBook(
                AssetImage(AppImages.bookImage),
                "Chapter 2",
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                "anotherTitle"),
            btnClick(AppColor.blackColor_3, AppColor.blackColor,
                AppColor.whiteColor_1, () {}, "Pause"),
            btnClick(AppColor.blackColor_3, AppColor.blackColor,
                AppColor.whiteColor_1, () {}, "Forward"),
            btnClick(AppColor.greenColor, AppColor.whiteColor_1,
                AppColor.greenColor, () {}, "Play"),
          ],
        ),
      ),
    );
  }
}

Widget btnClick(colorBorder, colorText, fillColor, onPress, text) {
  return InkWell(
    onTap: onPress,
    child: Container(
        alignment: Alignment.center,
        width: 100.w,
        height: 6.h,
        margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: fillColor,
            border: Border.all(color: colorBorder, width: 1)),
        child: Text(text,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 4.w, fontWeight: FontWeight.w500, color: colorText))),
  );
}

Widget cardBook(img, title, body, anotherTitle) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 3.w),
    child: Row(
      children: [
        Container(
          width: 30.w,
          height: 20.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        SizedBox(
          height: 20.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              SizedBox(
                width: 50.w,
                child: Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  body,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 3.5.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor_3),
                ),
              ),
              SizedBox(
                height: 2.w,
              ),
              Row(
                children: [
                  Container(
                    width: 5.w,
                    height: 5.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.greyColor),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    anotherTitle,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 3.5.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor_2),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget icons(onPreShare, onPreDowenLoad, onPreSave) {
  return Container(
      width: 5.w,
      height: 16.h,
      margin: EdgeInsets.only(right: 5.w, top: 5.h),
      child: Column(
        children: [
          SizedBox(
            height: 4.w,
          ),
          InkWell(
            onTap: onPreShare,
            child: Icon(
              Icons.send_outlined,
              color: AppColor.greenColor,
              size: 5.w,
            ),
          ),
          SizedBox(
            height: 4.w,
          ),
          InkWell(
            onTap: onPreDowenLoad,
            child: Icon(
              Icons.save_alt,
              color: AppColor.greenColor,
              size: 5.w,
            ),
          ),
          SizedBox(
            height: 4.w,
          ),
          InkWell(
            onTap: onPreSave,
            child: Icon(
              Icons.save,
              color: AppColor.greenColor,
              size: 5.w,
            ),
          )
        ],
      ));
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
