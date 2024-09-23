import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class SpecificCategoryContainer extends StatefulWidget {
  const SpecificCategoryContainer({required this.buttonText, super.key});
  final String? buttonText;
  @override
  State<SpecificCategoryContainer> createState() =>
      _SpecificCategoryContainerState();
}

class _SpecificCategoryContainerState extends State<SpecificCategoryContainer> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8.w),
          width: double.infinity,
          height: 187.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(6.w)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                image: AssetImage('assets/images/book1.png'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Name : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
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
                  SizedBox(
                    width: 192.w,
                    height: 32.h,
                    child: CustomButton(
                        onpressed: () {},
                        buttonColor: primaryColor,
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'IBMPlexSans'),
                        buttonText: widget.buttonText!,
                        borderColor: primaryColor),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          right: 5.w,
          top: 5.h,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_outlined,
                color: primaryColor,
              )),
        )
      ],
    );
  }
}
