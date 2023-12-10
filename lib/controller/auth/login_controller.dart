import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isPass = true;

  showPass(){
    isPass = isPass ? false : true;
    update();
  }

  @override
  goToSignUp() {
   Get.offNamed(AppRoute.signUp);
  }

  @override
  login() {
    FormState? formData = formKey.currentState;
    if(formData!.validate()){
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgotPassword() {
    Get.offNamed(AppRoute.forgotPassword);
  }

}