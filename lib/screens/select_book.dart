import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class SelectBook extends StatelessWidget {
  const SelectBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarPage(() {}, "Book Details", () {}),
            Divider(
              color: AppColor.greyColor,
              endIndent: 5.w,
              indent: 5.w,
              thickness: .2,
            ),
            authorSection(
                AssetImage(AppImages.userImage), "Palo Alto", "james franco"),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w, top: 2.w),
              child: Text(
                "Description & Summary",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.2.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            cardBook(
                AssetImage(AppImages.bookImage),
                "Chapter 1",
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                "Introduction",
                "90 min"),
            Divider(
              color: AppColor.greyColor,
              endIndent: 5.w,
              indent: 5.w,
              thickness: .4,
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w, top: 2.w),
              child: Text(
                "key points",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.2.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  right: 5.w,
                  left: 5.w,
                  bottom: 5.w,
                ),
                width: 100.w,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 2.w,
                  ),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Text(
                    "- what navy seals can trach us acout leadership ?",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 4.5.w,
                        fontWeight: FontWeight.normal,
                        color: AppColor.blackColor),
                  ),
                )),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w, top: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "more book like this ?",
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 5.w,
                        fontWeight: FontWeight.w500,
                        color: AppColor.blackColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Explore more",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 4.5.w,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 1.5,
                          fontWeight: FontWeight.w500,
                          color: AppColor.blackColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  right: 5.w, left: 5.w, bottom: 10.w, top: 10.w),
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  btnClick(AppColor.greenColor_2, AppColor.blackColor,
                      AppColor.whiteColor, () {}, "Listen", 25.w),
                  btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                      AppColor.greenColor_2, () {}, "Read Now", 60.w),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget btnClick(colorBorder, colorText, fillColor, onPress, text, width) {
  return InkWell(
    onTap: onPress,
    child: Container(
      
        alignment: Alignment.center,
        width: width,
        height: 6.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.w),
            color: fillColor,
            border: Border.all(color: colorBorder, width: 1)),
        child: Text(text,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 5.w, fontWeight: FontWeight.w500, color: colorText))),
  );
}

Widget authorSection(img, title, author) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 5.w),
    child: Row(
      children: [
        Container(
          width: 15.w,
          height: 15.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: img, fit: BoxFit.fill),
          ),
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
                  fontSize: 5.2.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
            Text(
              "by $author",
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.greyColor),
            ),
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
            icon: FaIcon(
              FontAwesomeIcons.share,
              size: 7.w,
              color: AppColor.blackColor.withOpacity(.7),
            )),
      ],
    ),
  );
}

Widget cardBook(img, title, body, anotherTitle, time) {
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
                    fontSize: 6.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor),
              ),
              SizedBox(
                height: 2.w,
              ),
              Text(
                anotherTitle,
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.greyColor),
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
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor_2),
                ),
              ),
              SizedBox(
                height: 3.w,
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
