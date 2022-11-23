
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.widthbutton}) : super(key: key);
final String text;
final int widthbutton;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      width: widthbutton.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: BackgroundColor,
      ),
      child: Center(
        child: Text(text,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Brandon Grotesque',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600
            )
        ),
      ),
    );
  }
}
