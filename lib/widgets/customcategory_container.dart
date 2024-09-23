import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/screens/specific_category_screen.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomcategoryContainer extends StatelessWidget {
  const CustomcategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => SpecificCategoryScreen());
      },
      child: Container(
        height: 224.h,
        width: 164.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(6.w)),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Image.asset(
                'assets/images/book1.png',
                width: 111.w,
              ),
            ),
            const Text('The biography')
          ],
        ),
      ),
    );
  }
}
