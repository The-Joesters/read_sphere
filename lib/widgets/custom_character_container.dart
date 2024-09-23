import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CharacterWidget extends StatelessWidget {
  final int index;
  final String assetPath;
  final bool isSelected;
  final Function() onTap;

  const CharacterWidget({
    Key? key,
    required this.index,
    required this.assetPath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 30.w,
        width: 30.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.w),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.transparent,
            width: 3,
          ),
        ),
        child: SvgPicture.asset(assetPath),
      ),
    );
  }
}
