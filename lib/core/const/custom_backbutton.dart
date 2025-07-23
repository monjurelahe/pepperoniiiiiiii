import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';

Widget buildBackArrowButton(BuildContext context) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(17),
          child: const Icon(Icons.arrow_back_ios_new, size: 20),
        ),
      ),
    ),
  );
}

Widget buildLabel(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(bottom: 1.h, top: 15.h),
      child: Text(text, style: AppText.firstName),
    ),
  );
}
