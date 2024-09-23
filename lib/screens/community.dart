import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/menu.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          appBarPage(() {}, "Community"),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .2,
          ),
          cardSocial(
              AssetImage(AppImages.socialImage),
              AssetImage(AppImages.avatarSmallImage),
              "kareem",
              "#flutter developer",
              "Just finished reading, what a jouney!", () {
            //onPressLike
          }, () {
            //onPressComment
          }, () {
            //onPressShare
          }, true),
        ],
      ),
    );
  }
}

Widget cardSocial(image, imgUser, user, type, title, onPressLike,
    onPressComment, onPressShare, isLike) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w),
    width: 100.w,
    // height: 45.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.w),
        border: Border.all(color: AppColor.greyColor.withOpacity(.3))),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 100.w,
          height: 30.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: image, fit: BoxFit.fill)),
        ),
        Padding(
          padding: EdgeInsets.all(2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 8.w,
                    height: 8.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: imgUser, fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    user,
                    style: GoogleFonts.ibmPlexSans(
                        fontSize: 4.w,
                        fontWeight: FontWeight.w300,
                        color: AppColor.blackColor_2),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(1.w),
                width: 37.w,
                decoration: BoxDecoration(
                    color: AppColor.greyColor.withOpacity(.2),
                    borderRadius: BorderRadius.circular(2.w)),
                child: Text(
                  type,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w300,
                      color: AppColor.blackColor_2),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.w),
          child: Text(
            title,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 4.w,
                fontWeight: FontWeight.w400,
                color: AppColor.blackColor_2),
          ),
        ),
        Divider(
          color: AppColor.greyColor.withOpacity(.3),
        ),
        Padding(
          padding: EdgeInsets.all(2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 25.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: isLike == true
                          ? AppColor.greenColor_2
                          : AppColor.greyColor,
                      size: 5.w,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "like",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 4.w,
                          fontWeight: FontWeight.w400,
                          color: isLike == true
                              ? AppColor.greenColor_2
                              : AppColor.greyColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 34.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.comment,
                      color: AppColor.greyColor,
                      size: 5.w,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "comment",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 4.w,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greyColor),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 25.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.share,
                      color: AppColor.greyColor,
                      size: 5.w,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "share",
                      style: GoogleFonts.ibmPlexSans(
                          fontSize: 4.w,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greyColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
