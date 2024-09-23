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
      padding: EdgeInsets.all(2.w),
      margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 2.w, bottom: 2.w),
      width: double.infinity,
      height: 20.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6.w)),
      child: Row(
        children: [
          const Image(
            image: AssetImage('assets/images/book1.png'),
          ),
          SizedBox(
            width: 3.w,
          ),
          SizedBox(
            height: 15.h,
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
                            fontSize: 4.w,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'John donne',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 4.w,
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
                            fontSize: 4.w,
                            fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: '594 pages',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 4.w,
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
                          fontSize: 4.w,
                          fontWeight: FontWeight.w500),
                    ),
                    PannableRatingBar(
                      rate: rating,
                      items: List.generate(
                          5,
                          (index) => RatingWidget(
                                selectedColor: Colors.yellow,
                                unSelectedColor: Colors.grey,
                                child: Icon(
                                  Icons.star,
                                  size: 5.w,
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
