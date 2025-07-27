import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:pepperoniiiii/features/auth/screen/login_screen.dart';
import 'package:pepperoniiiii/features/auth/screen/otp_screen.dart';
import 'package:pepperoniiiii/features/auth/screen/signup_screen.dart';
import 'package:pepperoniiiii/features/auth/screen/verification_screen.dart';

class AppRoute {
  static String loginScreen = "/loginScreen";
  static String signupScreen = "/signupScreen";
  static String otpScreen = "/otpScreen";
  static String verificationscreen = "/verificationscreen";

  static String getLoginScreen() => loginScreen;

  static String getSignupScreen() => signupScreen;

  static String getOtpScreen() => otpScreen;

  static String getVerificationscreen() => verificationscreen;

  static List<GetPage> routes = [
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: signupScreen, page: () => SignupScreen()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: verificationscreen, page: () => VerificationScreen()),
  ];
}
