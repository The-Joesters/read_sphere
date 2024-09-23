import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/controller/home_page_controller.dart';
import 'package:readsphere_ieee/screens/search_for_article.dart';
import 'package:readsphere_ieee/screens/select_book.dart';

import 'package:screen_go/extensions/responsive_nums.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController controller = Get.put(HomePageController());
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarHome(() {}),
            searchField(controller.searchController, () {}),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 5.w),
              child: Text(
                "Find your next great read",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 4.w,
                    fontWeight: FontWeight.w300,
                    color: AppColor.blackColor_2),
              ),
            ),
            rowSection("Book Recommendation", "view more", true, () {}),
            cardBook(AssetImage(AppImages.bookImage), "A little life",
                "kareem elsayed", () {}, true),
            rowSection("Summaries", "", false, () {}),
            uploadWidget(() {}),
            rowSection("Top Genres", "view more", true, () {}),
            cardBook(
                AssetImage(AppImages.bookImage), "Horror", "", () {}, false),
            rowSection("Latest Articles", "view more", true, () {}),
            cardArticles(AssetImage(AppImages.articleImage), "what is Flutter ",
                "10 min read", () {}),
            rowSection("in progress", "", false, () {}),
            cardProgress(AssetImage(AppImages.bookImage), "The biography",
                "700", "", () {}),
            rowSection("You might also like", "", false, () {}),
            SizedBox(
              height: 2.w,
            ),
            cardBook(AssetImage(AppImages.bookImage), "Walking away", "", () {},
                false),
            SizedBox(
              height: 10.w,
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardProgress(img, name, pages, rate, onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w),
    padding: EdgeInsets.all(2.w),
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    child: Row(
      children: [
        Container(
          width: 35.w,
          height: 25.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: DecorationImage(image: img, fit: BoxFit.fill)),
        ),
        SizedBox(
          width: 3.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Name: ",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
                Text(
                  name,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 3.w,
                      fontWeight: FontWeight.w400,
                      color: AppColor.blackColor_2),
                ),
              ],
            ),
            SizedBox(
              height: 2.w,
            ),
            Row(
              children: [
                Text(
                  "Numper of pages: ",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
                Text(
                  pages,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 3.w,
                      fontWeight: FontWeight.w400,
                      color: AppColor.blackColor_2),
                ),
              ],
            ),
            SizedBox(
              height: 2.w,
            ),
            Row(
              children: [
                Text(
                  "Rate: ",
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
                SizedBox(
                  width: 30.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 5.w,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 5.w,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 5.w,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 5.w,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow,
                        size: 5.w,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            btnClick(AppColor.greenColor_2, AppColor.whiteColor_1,
                AppColor.greenColor_2, () {}, "continue read", 45.w)
          ],
        )
      ],
    ),
  );
}

Widget cardArticles(img, title, time, onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 2.w, bottom: 3.w),
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    padding: EdgeInsets.all(3.w),
    child: Column(
      children: [
        Container(
          width: 100.w,
          height: 20.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.w),
            image: DecorationImage(image: img, fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: 2.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.w,
                  fontWeight: FontWeight.w300,
                  color: AppColor.blackColor_2),
            ),
            Text(
              time,
              style: GoogleFonts.ibmPlexSans(
                  fontSize: 3.w,
                  fontWeight: FontWeight.w300,
                  color: AppColor.greyColor),
            ),
          ],
        )
      ],
    ),
  );
}

Widget uploadWidget(onPress) {
  return Container(
    height: 15.h,
    width: 100.w,
    decoration: BoxDecoration(
        color: AppColor.whiteColor_1, borderRadius: BorderRadius.circular(3.w)),
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 2.w, bottom: 3.w),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Upload your book now and enjoy your summary",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 3.w,
              fontWeight: FontWeight.w300,
              color: AppColor.blackColor_2),
        ),
        SizedBox(
          height: 5.w,
        ),
        Icon(
          Icons.file_upload_outlined,
          color: AppColor.greenColor,
          size: 6.w,
        )
      ],
    ),
  );
}

Widget cardBook(img, title, author, onPress, info) {
  return InkWell(
    onTap: onPress,
    child: Container(
      width: 43.w,
      padding: EdgeInsets.all(3.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          color: AppColor.whiteColor_1),
      margin: EdgeInsets.only(right: 5.w, left: 5.w, bottom: 3.w),
      child: Column(
        children: [
          Container(
            width: 32.w,
            height: 20.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.w),
                image: DecorationImage(image: img, fit: BoxFit.fill)),
          ),
          SizedBox(
            height: 3.w,
          ),
          info == true
              ? SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title: $title",
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
                          "Author: $author",
                          style: GoogleFonts.ibmPlexSans(
                              fontSize: 3.w,
                              fontWeight: FontWeight.w300,
                              color: AppColor.greyColor),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  title,
                  style: GoogleFonts.ibmPlexSans(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blackColor),
                ),
        ],
      ),
    ),
  );
}

Widget rowSection(title, textClick, isclick, onPress) {
  return Container(
    margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 3.w, bottom: 1.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSans(
              fontSize: 5.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        if (isclick == true)
          Text(
            textClick,
            style: GoogleFonts.ibmPlexSans(
                fontSize: 4.w,
                fontWeight: FontWeight.w500,
                color: AppColor.greenColor_2),
          ),
      ],
    ),
  );
}

Widget appBarHome(onPressed) {
  return Container(
    margin: EdgeInsets.only(
      right: 5.w,
      left: 5.w,
      top: 5.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Welcome back",
          style: GoogleFonts.ibmPlexSans(
              fontSize: 6.w,
              fontWeight: FontWeight.w500,
              color: AppColor.blackColor),
        ),
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.grid_view_rounded,
              color: AppColor.greyColor,
              size: 7.w,
            ))
      ],
    ),
  );
}
