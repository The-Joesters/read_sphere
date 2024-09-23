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
          margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 3.w),
          width: double.infinity,
          height: 25.h,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(3.w)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(
                image: AssetImage('assets/images/book1.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 5.w,
                  ),
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
                  SizedBox(
                    height: 5.w,
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
                  SizedBox(
                    height: 5.w,
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
                  SizedBox(
                    height: 10.w,
                  ),
                  SizedBox(
                    width: 50.w,
                    height: 5.h,
                    child: CustomButton(
                        onpressed: () {},
                        buttonColor: primaryColor,
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 4.w,
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
          top: 2.h,
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
