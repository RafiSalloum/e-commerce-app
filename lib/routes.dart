import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:ecommerce_app/core/middleware/my_middleware.dart';
import 'package:ecommerce_app/view/screens/auth/forgot_password/forgot_password.dart';
import 'package:ecommerce_app/view/screens/auth/forgot_password/reset_password.dart';
import 'package:ecommerce_app/view/screens/auth/forgot_password/verify_code.dart';
import 'package:ecommerce_app/view/screens/auth/login.dart';
import 'package:ecommerce_app/view/screens/auth/sign_up.dart';
import 'package:ecommerce_app/view/screens/auth/forgot_password/success_forgot_password.dart';
import 'package:ecommerce_app/view/screens/auth/success_register.dart';
import 'package:ecommerce_app/view/screens/auth/verify_code_register.dart';
import 'package:ecommerce_app/view/screens/language.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: '/', page: () => const Language(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.onboarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.signIn, page: () => const LoginScreen()),
  GetPage(name: AppRoute.forgotPassword, page: () => const ForgotPassword()),
  GetPage(name: AppRoute.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successForgotPassword, page: () => const SuccessForgotPassword()),
  GetPage(name: AppRoute.successRegister, page: () => const SuccessRegister()),
  GetPage(name: AppRoute.verifyCodeRegister, page: () => const VerifyCodeRegister()),
];
