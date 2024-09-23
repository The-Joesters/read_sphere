import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/controller/upload_book_controller.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class UploadBook extends StatelessWidget {
  const UploadBook({super.key});

  @override
  Widget build(BuildContext context) {
    UploadBookControlller controlller = Get.put(UploadBookControlller());
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBarPage(() {}, "Upload book or article"),
          SizedBox(height: 3.h),
          Container(
            margin: EdgeInsets.only(right: 5.w, left: 5.w),
            child: Text(
              "upload  to continue make ur summary book",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor_2),
            ),
          ),
          cardUploadBook(() {}),
          btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
              AppColor.greenColor_2, () {}, "Go"),
          SizedBox(
            height: 5.w,
          ),
          Divider(
            color: AppColor.blackColor,
            thickness: .3,
            endIndent: 5.w,
            indent: 5.w,
          ),
          SizedBox(
            height: 5.w,
          ),
          bottomPage(controlller.articleLinkController),
          btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
              AppColor.greenColor_2, () {}, "Go"),
          SizedBox(
            height: 5.w,
          ),
        ],
      ),
    );
  }
}

Widget bottomPage(controller) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "article link",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        SizedBox(
          height: 3.w,
        ),
        TextFormField(
          controller: controller,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide: BorderSide(color: AppColor.greenColor_2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide: BorderSide(color: AppColor.greenColor_2)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide: BorderSide(color: AppColor.greenColor_2)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.w),
                borderSide: BorderSide(color: AppColor.greenColor_2)),
            contentPadding: EdgeInsets.all(3.w),
          ),
        ),
        Text(
          "link must start with http://",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 2.5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
      ],
    ),
  );
}

Widget cardUploadBook(onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          width: 100.w,
          height: 25.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.w),
            border: Border.all(color: AppColor.greenColor_2, width: 1.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_upload_outlined,
                color: AppColor.greenColor,
                size: 5.w,
              ),
              SizedBox(
                height: 2.w,
              ),
              Text(
                "click her to upload",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 3.5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_2),
              ),
            ],
          ),
        ),
        Text(
          "max 200 m",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.w,
              fontWeight: FontWeight.normal,
              color: AppColor.blackColor_2),
        ),
      ],
    ),
  );
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
