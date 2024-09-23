import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:readsphere_ieee/constant/color.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Column(
        children: [
          appBarPage(() {}, "menu"),
         Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .2,
          ), 
          menuWidget(Icons.settings, "App setting", true, false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(
              Icons.notifications_rounded, "Notification", true, false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(Icons.font_download, "customize font and color", false,
              true, "500n"),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(
              Icons.subscriptions_outlined, "subscripition", true, false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(Icons.policy, "privacy policy", true, false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(Icons.privacy_tip, "terms of use", true, false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(Icons.contact_support_rounded, "contact support", true,
              false, ""),
          Divider(
            color: AppColor.greyColor,
            endIndent: 5.w,
            indent: 5.w,
            thickness: .4,
          ),
          menuWidget(Icons.logout, "log out", false, false, ""),
        ],
      ),
    );
  }
}

Widget menuWidget(icon, text, iconic, ttextClick, size) {
  return Container(
    padding: EdgeInsets.only(top: 2.w, bottom: 2.w),
    margin: EdgeInsets.only(
      right: 5.w,
      left: 5.w,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 5.w,
              color: AppColor.greenColor,
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              text,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 5.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.blackColor),
            ),
          ],
        ),
        if (iconic == true)
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 5.w,
            color: AppColor.greyColor,
          ),
        if (ttextClick == true)
          Text(
            size,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 3.w,
                fontWeight: FontWeight.w500,
                color: AppColor.blackColor),
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
