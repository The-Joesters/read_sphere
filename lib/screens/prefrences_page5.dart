import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constant/constants.dart';

import 'package:readsphere_ieee/widgets/custom_prefrences_row.dart';

import 'package:readsphere_ieee/widgets/custom_button.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class PrefrencesPage5 extends StatefulWidget {
  const PrefrencesPage5({super.key});

  @override
  State<PrefrencesPage5> createState() => _PrefrencesPage5State();
}

class _PrefrencesPage5State extends State<PrefrencesPage5> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        children: [
          CustomPrefrencesRow(
            onpressed: () {},
            text: 'Does this book seem\n interesting to you?',
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: SizedBox(
              height: 20.h, // يمكنك ضبط الارتفاع حسب حجم الصور
              width: double.infinity, // يمكنك ضبط العرض أيضًا حسب الحاجة
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 5.w, // الصورة الأولى في اليسار
                    child: const Image(
                      image: AssetImage('assets/images/book1.png'),
                    ),
                  ),
                  Positioned(
                    left: 30.w, // الصورة الثانية تتداخل قليلاً مع الأولى
                    child: const Image(
                      image: AssetImage('assets/images/book2.png'),
                    ),
                  ),
                  Positioned(
                    left: 50.w, // الصورة الثالثة تتداخل مع الثانية
                    child: const Image(
                      image: AssetImage('assets/images/book3.png'),
                    ),
                  ),
                  Positioned(
                    right: 5.w, // الصورة الرابعة تتداخل مع الثالثة
                    child: const Image(
                      image: AssetImage('assets/images/book4.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 20.h, // يمكنك ضبط الارتفاع حسب حجم الصور
              width: double.infinity, // يمكنك ضبط العرض أيضًا حسب الحاجة
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: 5.w, // الصورة الأولى في اليسار
                    child: const Image(
                      image: AssetImage('assets/images/book5.png'),
                    ),
                  ),
                  Positioned(
                    left: 30.w, // الصورة الثانية تتداخل قليلاً مع الأولى
                    child: const Image(
                      image: AssetImage('assets/images/book6.png'),
                    ),
                  ),
                  Positioned(
                    left: 50.w, // الصورة الثالثة تتداخل مع الثانية
                    child: const Image(
                      image: AssetImage('assets/images/book7.png'),
                    ),
                  ),
                  Positioned(
                    right: 5.w, // الصورة الرابعة تتداخل مع الثالثة
                    child: const Image(
                      image: AssetImage('assets/images/book8.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Container(
            margin: EdgeInsets.only(right: 5.w, left: 5.w, top: 10.w),
            child: CustomButton(
                onpressed: () {},
                buttonColor: primaryColor,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 4.w,
                    fontFamily: 'IBMPlexSans'),
                buttonText: 'Continue',
                borderColor: primaryColor),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
