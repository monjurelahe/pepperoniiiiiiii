import 'package:flutter/material.dart';
import 'package:pepperoniiiii/core/const/app_colors.dart';
import 'package:pepperoniiiii/core/const/app_textstyles.dart';
import 'package:pepperoniiiii/core/const/image_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pepperoniiiii/core/const/custom_textfield.dart';
import 'package:pepperoniiiii/features/auth/screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: EdgeInsets.only(top: 72.h, left: 24.w, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo
              Image(image: AssetImage(ImagePath.logo), height: 100.h),

              SizedBox(height: 14.h),

              // Heading Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('CareOne', style: AppText.greenHeading),
                  SizedBox(width: 5.w),
                  Text('Login', style: AppText.blackHeading),
                ],
              ),

              SizedBox(height: 12.h),

              // Welcome Text
              Text(
                'Welcome Back, Create an account to continue',
                style: AppText.welcomeText,
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 10.h),

              // Email Label
              _buildLabel("Email"),

              // Email TextField
              CustomTextField(
                controller: emailController,
                hint: 'Enter your email',
                inputType: TextInputType.emailAddress,
              ),

              SizedBox(height: 10.h),

              // Password Label
              _buildLabel("Password"),

              // Password TextField with visibility toggle
              CustomTextField(
                controller: passwordController,
                hint: 'Enter your password',
                isPassword: true,
              ),

              // Forgot password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupScreen()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: AppText.forgotPassword,
                    textAlign: TextAlign.end,
                  ),
                ),
              ),

              SizedBox(height: 200.h),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 50.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.greenColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text('Login', style: AppText.logIn),
                ),
              ),

              SizedBox(height: 22.h),

              // Don't you have account? Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't you have an account?",
                    style: AppText.haveAccount,
                  ),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignupScreen()),
                      );
                    },
                    child: Text('Sign Up', style: AppText.signUp),
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
        padding: EdgeInsets.only(bottom: 6.h, top: 12.h),
        child: Text(text, style: AppText.firstName),
      ),
    );
  }
}
