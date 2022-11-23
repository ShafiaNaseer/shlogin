

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';
class BoldText extends StatelessWidget {
  const BoldText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
      fontSize: 22.sp,
      fontWeight: FontWeight.bold,
    ),);
  }
}

class SimpleText extends StatelessWidget {
  const SimpleText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 16.sp,
        height: 1.5
    ),);
  }
}
InputDecoration customInputDecoration ( String labelText){
  return InputDecoration(
    filled: true,
    fillColor: TextfieldColor,
    hintText: labelText,
    contentPadding: EdgeInsets.all(15),
    labelStyle: TextStyle(color: Colors.black45),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent)
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent)
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent)
    ),);
}
