import 'package:flutter/material.dart';
import 'package:pepperoniiiii/core/const/app_colors.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';
import 'package:pepperoniiiii/core/const/image_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pepperoniiiii/core/const/custom_textfield.dart';
import 'package:pepperoniiiii/features/auth/screen/verification_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: EdgeInsets.only(top: 52.h, left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image(image: AssetImage(ImagePath.logo)),

              //SizedBox(height: 4.h),

              // Heading Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CareOne', style: AppText.greenHeading),
                  SizedBox(width: 5.w),
                  Text('Login', style: AppText.blackHeading),
                ],
              ),
              // Welcome Text
              Text(
                'Welcome, Create an account to continue',
                style: AppText.welcomeText,
                textAlign: TextAlign.center,
              ),

              // Email Label
              _buildFirstname("First Name"),

              CustomTextField(
                controller: emailController,
                hint: 'Enter your name',
                inputType: TextInputType.emailAddress,
              ),

              // Password Label
              _buildFirstname("Last Name"),

              // Password TextField with visibility toggle
              SizedBox(width: 4),
              CustomTextField(
                controller: passwordController,
                hint: 'Enter your name',
              ),

              _buildFirstname("Email "),

              CustomTextField(
                controller: emailController,
                hint: 'Enter your email',
                inputType: TextInputType.emailAddress,
              ),

              _buildLabel("Password"),

              CustomTextField(
                controller: emailController,
                hint: 'Enter your password',
                inputType: TextInputType.emailAddress,
                isPassword: true,
              ),

              _buildLabel("Confirm password"),

              CustomTextField(
                controller: emailController,
                hint: 'Re-Enter your password',
                inputType: TextInputType.emailAddress,
                isPassword: true,
              ),

              SizedBox(height: 40.h),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => VerificationScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text('Sign Up', style: AppText.logIn),
                ),
              ),

              SizedBox(height: 22.h),

              // Don't you have account? Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: AppText.haveAccount),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: Text('Log Up', style: AppText.signUp),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.h, top: 15.h),
        child: Text(text, style: AppText.firstName),
      ),
    );
  }

  Widget _buildFirstname(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.h, top: 15.h),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '$text ',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              TextSpan(
                text: '*',
                style: TextStyle(
                  color: Appcolors.greenColor, // or AppColors.greenColor
                ),
              ),
            ],
          ),
        ),
        //Text(text, style: AppText.firstName),
      ),
    );
  }
}
