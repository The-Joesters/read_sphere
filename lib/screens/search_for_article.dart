import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/controller/search_for_articl_controller.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class SearchForArticl extends StatelessWidget {
  const SearchForArticl({super.key});

  @override
  Widget build(BuildContext context) {
    SearchForArticlController controller = SearchForArticlController();
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarPage(() {}, "Articles", () {}),
            Divider(
              color: AppColor.greyColor,
              endIndent: 5.w,
              indent: 5.w,
              thickness: .2,
            ),
            searchField(controller.searchController, () {}),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 1.w),
              child: Text(
                "New and Noteworthy",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.2.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_2),
              ),
            ),
            cardArticle(
                Image.asset(
                  AppImages.articleImage,
                  fit: BoxFit.fill,
                ),
                "The Future of the American Right",
                "David Brooks",
                "2 min read"),
            cardArticle(
                Image.asset(
                  AppImages.articleImage,
                  fit: BoxFit.fill,
                ),
                "The Future of the American Right",
                "David Brooks",
                "2 min read"),
            cardArticle(
                Image.asset(
                  AppImages.articleImage,
                  fit: BoxFit.fill,
                ),
                "The Future of the American Right",
                "David Brooks",
                "2 min read")
          ],
        ),
      ),
    );
  }
}

Widget cardArticle(img, title, type, time) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 2.w),
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
      color: AppColor.whiteColor_1,
      borderRadius: BorderRadius.circular(3.w),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.w)),
          width: 100.w,
          height: 25.h,
          child: img,
        ),
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor_2),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              type,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 4.w,
                  fontWeight: FontWeight.w500,
                  color: AppColor.greyColor),
            ),
            Text(
              time,
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

Widget searchField(controller, onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 3.w, bottom: 5.w),
    child: TextFormField(
      
      decoration: InputDecoration(
      
        suffixIcon: Container(
          decoration: BoxDecoration(color: AppColor.greenColor_2,borderRadius: BorderRadius.circular(3.w)),
          child: Icon(
            Icons.search,
            size: 6.w,
            color: AppColor.whiteColor_1,
          ),
        ),
        hintText: "Discover",
        hintStyle: GoogleFonts.ibmPlexSans(
            fontSize: 4.w,
            fontWeight: FontWeight.w500,
            color: AppColor.greyColor),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: BorderSide(color: AppColor.greyColor.withOpacity(.7))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: BorderSide(color: AppColor.greyColor.withOpacity(.7))),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: BorderSide(color: AppColor.greyColor.withOpacity(.7))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
            borderSide: BorderSide(color: AppColor.greyColor.withOpacity(.7))),
      ),
      controller: controller,
    ),
  );
}
