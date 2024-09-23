import 'package:flutter/material.dart';
import 'package:readsphere_ieee/constant/constants.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class CustomcheckboxList extends StatefulWidget {
  final List<String> texts;
  final List<bool> isChecked;
  final Function(List<String>) onSelectedOptionsChanged;

  CustomcheckboxList({
    required this.texts,
    required this.isChecked,
    required this.onSelectedOptionsChanged,
    super.key,
  });

  @override
  State<CustomcheckboxList> createState() => _CustomcheckboxListState();
}

class _CustomcheckboxListState extends State<CustomcheckboxList> {
  List<String> selectedOptions = [];

  void updateSelectedOptions() {
    selectedOptions = [];

    for (int i = 0; i < widget.isChecked.length; i++) {
      if (widget.isChecked[i]) {
        selectedOptions.add(widget.texts[i]);
      }
    }

    widget.onSelectedOptionsChanged(selectedOptions);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.texts.length, (index) {
          return Container(
            width: double.infinity,
            height: 6.h,
            margin: EdgeInsets.symmetric(vertical: 5.w),
            padding: EdgeInsets.all(1.w),
            decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(5.w),
                border: Border.all(color: const Color(0xff666666), width: 1)),
            child: Row(
              children: [
                Text(
                  widget.texts[index],
                  style: TextStyle(
                      fontSize: 4.w,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'IBMPlexSans'),
                ),
                const Spacer(),
                Checkbox(
                  checkColor: Colors.white,
                  side: const BorderSide(color: Color(0xff666666)),
                  activeColor: primaryColor,
                  value: widget.isChecked[index],
                  onChanged: (bool? value) {
                    setState(() {
                      widget.isChecked[index] = value!;
                      updateSelectedOptions();
                    });
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
