import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readsphere_ieee/constant/color.dart';
import 'package:readsphere_ieee/constant/images.dart';
import 'package:readsphere_ieee/screens/aydio_book.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CompletedBooksPage extends StatelessWidget {
  const CompletedBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarPage(() {}, "completed books", () {}),
            Divider(
              endIndent: 5.w,
              indent: 5.w,
              color: AppColor.greyColor.withOpacity(.2),
            ),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w),
              width: 100.w,
              height: 60.h,
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: .68,
                    crossAxisSpacing: 3.w,
                    mainAxisSpacing: 3.w),
                itemBuilder: (context, index) => Container(
                  width: 28.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
                      image: DecorationImage(
                          image: AssetImage(
                            AppImages.bookImage,
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(right: 5.w, left: 5.w, top: 5.w, bottom: 5.w),
              child: Text(
                "In progress",
                style: GoogleFonts.ibmPlexSans(
                    fontSize: 5.w,
                    fontWeight: FontWeight.w500,
                    color: AppColor.blackColor_2),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 5.w, left: 5.w),
              width: 100.w,
              height: 20.h,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: 4.w,
                ),
                itemCount: 6,
                itemBuilder: (context, index) => Container(
                  width: 27.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.w),
                      image: DecorationImage(
                          image: AssetImage(
                            AppImages.bookImage,
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
