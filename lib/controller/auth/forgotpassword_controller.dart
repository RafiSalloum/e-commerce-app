import 'package:ecommerce_app/core/constants/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail();
  goToVerificationCode();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  late TextEditingController emailController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  goToVerificationCode() {
    FormState? formData = formKey.currentState;
    if(formData!.validate()){
      Get.offNamed(AppRoute.verifyCode);
      return 'Valid';
    } else {
      return 'Not Valid';
    }
  }

  @override
  checkEmail() {

  }

  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

}