import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomDownloadsContainer extends StatefulWidget {
  const CustomDownloadsContainer({super.key});

  @override
  State<CustomDownloadsContainer> createState() =>
      _CustomDownloadsContainerState();
}

class _CustomDownloadsContainerState extends State<CustomDownloadsContainer> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.w),
      width: double.infinity,
      height: 187.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.w)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Image(
            image: AssetImage('assets/images/book1.png'),
          ),
          SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Name : ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.w,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'John donne',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Number of pages : ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: '594 pages',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Rate : ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    PannableRatingBar(
                      rate: rating,
                      items: List.generate(
                          5,
                          (index) => const RatingWidget(
                                selectedColor: Colors.yellow,
                                unSelectedColor: Colors.grey,
                                child: Icon(
                                  Icons.star,
                                  size: 24,
                                ),
                              )),
                      onChanged: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
