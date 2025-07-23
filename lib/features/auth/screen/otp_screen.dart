import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pepperoniiiii/core/const/app_colors.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';
import 'package:pepperoniiiii/core/const/custom_backbutton.dart';
import 'package:pepperoniiiii/core/const/custom_button.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:pepperoniiiii/core/const/image_path.dart';
import 'package:pepperoniiiii/features/auth/screen/signup_screen.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //For Arrow Button
                buildBackArrowButton(context),
                Center(child: Image(image: AssetImage(ImagePath.logo))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('OTP', style: AppText.greenHeading)],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "We sent a OTP code to your email. Please confirm enter for verification.",
                    style: AppText.welcomeText,
                    textAlign: TextAlign.center,
                  ),
                ),

                //OTP field
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(21),
                    child: OtpTextField(
                      numberOfFields: 4,
                      showFieldAsBox: true,
                      fieldWidth: 62.w, // make square width
                      fieldHeight: 62.h,
                      filled: true,
                      fillColor: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content: Text(
                                'Code entered is $verificationCode',
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),

                //Didnt get code text
                SizedBox(height: 23),
                Padding(
                  padding: EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't you get a code??",
                        style: AppText.haveAccount,
                      ),
                      SizedBox(width: 4.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const SignupScreen(),
                            ),
                          );
                        },
                        child: Text('Resend', style: AppText.signUp),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 11),
                //Button
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: customButton(
                    text: 'Verify ',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => SignupScreen()),
                      );
                    },
                    backgroundColor: Appcolors.greenColor,
                    textStyle: AppText.logIn,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
