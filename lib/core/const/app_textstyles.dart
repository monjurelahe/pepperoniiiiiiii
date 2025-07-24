import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppText {
  static TextStyle get greenHeading => TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: Color(0xff008080),
    letterSpacing: 0.3,
  );

  static final blackHeading = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Poppins',
    color: Color(0xff1E1E1E),
    letterSpacing: 0.3,
  );

  static final welcomeText = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Poppins',
    color: Color.fromRGBO(30, 30, 30, 0.6),
    letterSpacing: 0.3,
  );

  static final textField = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w200,
    fontFamily: 'Poppins',
    color: Colors.black45,
    letterSpacing: 0.3,
  );

  static final forgotPassword = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color.fromRGBO(0, 128, 128, 1),
    letterSpacing: 0.3,
  );

  static final signUp = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color.fromRGBO(0, 128, 128, 1),
    letterSpacing: 0.3,
  );

  static final haveAccount = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Colors.black,
    letterSpacing: 0.3,
  );

  static final firstName = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color.fromRGBO(30, 30, 30, 30),
    letterSpacing: 0.3,
  );

  static final logIn = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    color: Color.fromARGB(255, 255, 255, 255),
    letterSpacing: 0.3,
  );
}
