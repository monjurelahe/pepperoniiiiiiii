import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton({
  required String text,
  required VoidCallback onPressed,
  required Color backgroundColor,
  required TextStyle textStyle,
}) {
  return SizedBox(
    width: double.infinity,
    height: 50.h,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Text(text, style: textStyle),
    ),
  );
}
