import 'package:flutter/material.dart';
import 'package:pepperoniiiii/core/const/app_colors.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';
import 'package:pepperoniiiii/core/const/custom_backbutton.dart';
import 'package:pepperoniiiii/core/const/custom_button.dart';
import 'package:pepperoniiiii/core/const/custom_textfield.dart';
import 'package:pepperoniiiii/core/const/image_path.dart';
import 'package:pepperoniiiii/features/auth/screen/otp_screen.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});
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
                  children: [
                    Text('Email', style: AppText.greenHeading),
                    Text('Verification', style: AppText.blackHeading),
                  ],
                ),
                Text(
                  "Enter your email for verification. We'll send you \na OTP code there",
                  style: AppText.welcomeText,
                  textAlign: TextAlign.center,
                ),

                //Textfield
                Padding(
                  padding: const EdgeInsets.fromLTRB(11, 11, 0, 0),
                  child: buildLabel('Email'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomTextField(
                    controller: emailController,
                    hint: 'Enter your email',
                    inputType: TextInputType.emailAddress,
                  ),
                ),

                SizedBox(height: 22),
                //Button
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: customButton(
                    text: 'Send Email',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => OtpScreen()),
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
