import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:screen_go/extensions/responsive_nums.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator(
      {super.key,
      required this.pageController,
      required this.count,
      required this.width});

  final PageController pageController;
  final int count;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Padding(
        padding: EdgeInsets.only(right: 5.w, left: 5.w, top: 5.h),
        child: SmoothPageIndicator(
          controller: pageController,
          count: count,
          effect: SlideEffect(
              dotWidth: 27.w,
              spacing: 2.w,
              dotColor: const Color(0xffDADADA),
              activeDotColor: primaryColor,
              dotHeight: 1.w),
        ),
      ),
    );
  }
}
