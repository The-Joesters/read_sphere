// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/controller/home_controller.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: AppColor.greyColor.withOpacity(.3), width: 2))),
          child: BottomAppBar(
            height: 8.h,
            color: AppColor.whiteColor,
            notchMargin: 4.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                itemNavigationBar("Home", () {
                  controller.changePage(0);
                },
                    controller.currentIndex == 0 ? Icons.home : Icons.home,
                    25.w,
                    controller.currentIndex == 0
                        ? AppColor.greenColor_2
                        : AppColor.greyColor,
                    true,
                    ""),
                itemNavigationBar("Library", () {
                  controller.changePage(1);
                },
                    controller.currentIndex == 1
                        ? Icons.library_books
                        : Icons.library_books_outlined,
                    18.w,
                    controller.currentIndex == 1
                        ? AppColor.greenColor_2
                        : AppColor.greyColor,
                    true,
                    ""),
                itemNavigationBar("Challenge", () {
                  controller.changePage(2);
                },
                    controller.currentIndex == 2
                        ? FontAwesomeIcons.medal
                        : FontAwesomeIcons.medal,
                    20.w,
                    controller.currentIndex == 2
                        ? AppColor.greenColor_2
                        : AppColor.greyColor,
                    true,
                    ""),
                itemNavigationBar("Profile", () {
                  controller.changePage(3);
                },
                    controller.currentIndex == 3
                        ? Icons.person
                        : Icons.person_2_outlined,
                    20.w,
                    controller.currentIndex == 3
                        ? AppColor.greenColor_2
                        : AppColor.greyColor,
                    false,
                    AssetImage(AppImages.avatarSmallImage)),
              ],
            ),
          ),
        ),
        body: controller.pages.elementAt(controller.currentIndex),
      ),
    );
  }

  Widget itemNavigationBar(text, onTap, icon, width, color, iconic, img) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconic == true
                ? Icon(
                    icon,
                    size: 6.w,
                    color: color,
                  )
                : Container(
                    width: 6.w,
                    height: 6.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: img, fit: BoxFit.fill)),
                  ),
            SizedBox(height: .5.w),
            Text(
              text,
              style: GoogleFonts.ibmPlexSans(
                  color: color, fontWeight: FontWeight.w500, fontSize: 3.w),
            )
          ],
        ),
      ),
    );
  }
}
